
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_absolute_path (char const*) ;
 char* prefix_filename (char const*,char const*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static void fix_filename(const char *prefix, const char **file)
{
 if (!file || !*file || !prefix || is_absolute_path(*file)
     || !strcmp("-", *file))
  return;
 *file = prefix_filename(prefix, *file);
}
