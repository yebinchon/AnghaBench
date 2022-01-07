
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_pattern {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {struct path_pattern* pattern; } ;


 struct path_pattern* last_matching_pattern_from_lists (struct dir_struct*,struct index_state*,char const*,int,char const*,int*) ;
 int prep_exclude (struct dir_struct*,struct index_state*,char const*,int) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

struct path_pattern *last_matching_pattern(struct dir_struct *dir,
          struct index_state *istate,
          const char *pathname,
          int *dtype_p)
{
 int pathlen = strlen(pathname);
 const char *basename = strrchr(pathname, '/');
 basename = (basename) ? basename+1 : pathname;

 prep_exclude(dir, istate, pathname, basename-pathname);

 if (dir->pattern)
  return dir->pattern;

 return last_matching_pattern_from_lists(dir, istate, pathname, pathlen,
   basename, dtype_p);
}
