
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* prefix_path_gently (char const*,int,int *,char const*) ;
 int strlen (char const*) ;

int path_inside_repo(const char *prefix, const char *path)
{
 int len = prefix ? strlen(prefix) : 0;
 char *r = prefix_path_gently(prefix, len, ((void*)0), path);
 if (r) {
  free(r);
  return 1;
 }
 return 0;
}
