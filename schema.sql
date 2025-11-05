-- Optional schema for SQLite (you can rely on pandas.to_sql as well)
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS Department_Information (
    Department_ID TEXT PRIMARY KEY,
    Department_Name TEXT UNIQUE,
    DOE INTEGER
);

CREATE TABLE IF NOT EXISTS Employee_Information (
    Employee_ID TEXT PRIMARY KEY,
    Employee_Name TEXT,
    Department_ID TEXT,
    Title TEXT,
    FOREIGN KEY (Department_ID) REFERENCES Department_Information(Department_ID)
);

CREATE TABLE IF NOT EXISTS Student_Counseling_Information (
    Student_ID TEXT PRIMARY KEY,
    Department_Choices TEXT,
    DOA TEXT,
    Department_Admission TEXT
);

CREATE TABLE IF NOT EXISTS Student_Performance_Data (
    Student_ID TEXT,
    Semester_Name TEXT,
    Paper_ID TEXT,
    Paper_Name TEXT,
    Marks REAL,
    Effort_Hours REAL
);