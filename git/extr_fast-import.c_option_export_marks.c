
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int export_marks_file ;
 int make_fast_import_path (char const*) ;
 int safe_create_leading_directories_const (int ) ;

__attribute__((used)) static void option_export_marks(const char *marks)
{
 export_marks_file = make_fast_import_path(marks);
 safe_create_leading_directories_const(export_marks_file);
}
