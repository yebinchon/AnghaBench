
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* git_pathdup (char*,char const*) ;
 scalar_t__ is_absolute_path (char const*) ;
 int relative_marks_paths ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char* make_fast_import_path(const char *path)
{
 if (!relative_marks_paths || is_absolute_path(path))
  return xstrdup(path);
 return git_pathdup("info/fast-import/%s", path);
}
