
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 scalar_t__ import_marks_file ;
 int import_marks_file_from_stream ;
 int import_marks_file_ignore_missing ;
 scalar_t__ make_fast_import_path (char const*) ;
 int read_marks () ;
 int safe_create_leading_directories_const (scalar_t__) ;

__attribute__((used)) static void option_import_marks(const char *marks,
     int from_stream, int ignore_missing)
{
 if (import_marks_file) {
  if (from_stream)
   die("Only one import-marks command allowed per stream");


  if(!import_marks_file_from_stream)
   read_marks();
 }

 import_marks_file = make_fast_import_path(marks);
 safe_create_leading_directories_const(import_marks_file);
 import_marks_file_from_stream = from_stream;
 import_marks_file_ignore_missing = ignore_missing;
}
