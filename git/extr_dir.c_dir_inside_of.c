
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int cmp_icase (char const,char const) ;
 scalar_t__ is_dir_sep (char const) ;

int dir_inside_of(const char *subdir, const char *dir)
{
 int offset = 0;

 assert(dir && subdir && *dir && *subdir);

 while (*dir && *subdir && !cmp_icase(*dir, *subdir)) {
  dir++;
  subdir++;
  offset++;
 }


 if (*dir && *subdir)
  return -1;

 if (!*subdir)
  return !*dir ? offset : -1;


 if (is_dir_sep(dir[-1]))
  return is_dir_sep(subdir[-1]) ? offset : -1;


 return is_dir_sep(*subdir) ? offset + 1 : -1;
}
