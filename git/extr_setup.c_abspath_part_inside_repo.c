
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fspathcmp (int ,char const*) ;
 int fspathncmp (char*,char const*,size_t) ;
 char* get_git_work_tree () ;
 int memmove (char*,char*,size_t) ;
 int offset_1st_component (char*) ;
 int real_path (char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int abspath_part_inside_repo(char *path)
{
 size_t len;
 size_t wtlen;
 char *path0;
 int off;
 const char *work_tree = get_git_work_tree();

 if (!work_tree)
  return -1;
 wtlen = strlen(work_tree);
 len = strlen(path);
 off = offset_1st_component(path);


 if (wtlen <= len && !fspathncmp(path, work_tree, wtlen)) {
  if (path[wtlen] == '/') {
   memmove(path, path + wtlen + 1, len - wtlen);
   return 0;
  } else if (path[wtlen - 1] == '/' || path[wtlen] == '\0') {

   memmove(path, path + wtlen, len - wtlen + 1);
   return 0;
  }

  off = wtlen;
 }
 path0 = path;
 path += off;


 while (*path) {
  path++;
  if (*path == '/') {
   *path = '\0';
   if (fspathcmp(real_path(path0), work_tree) == 0) {
    memmove(path0, path + 1, len - (path - path0));
    return 0;
   }
   *path = '/';
  }
 }


 if (fspathcmp(real_path(path0), work_tree) == 0) {
  *path0 = '\0';
  return 0;
 }

 return -1;
}
