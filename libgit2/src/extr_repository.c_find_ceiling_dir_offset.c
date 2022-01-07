
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 char const GIT_PATH_LIST_SEPARATOR ;
 int GIT_PATH_MAX ;
 int assert (char const*) ;
 int git_path_root (char const*) ;
 int * p_realpath (char*,char*) ;
 size_t strlen (char*) ;
 int strncmp (char const*,char*,size_t) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static size_t find_ceiling_dir_offset(
 const char *path,
 const char *ceiling_directories)
{
 char buf[GIT_PATH_MAX + 1];
 char buf2[GIT_PATH_MAX + 1];
 const char *ceil, *sep;
 size_t len, max_len = 0, min_len;

 assert(path);

 min_len = (size_t)(git_path_root(path) + 1);

 if (ceiling_directories == ((void*)0) || min_len == 0)
  return min_len;

 for (sep = ceil = ceiling_directories; *sep; ceil = sep + 1) {
  for (sep = ceil; *sep && *sep != GIT_PATH_LIST_SEPARATOR; sep++);
  len = sep - ceil;

  if (len == 0 || len >= sizeof(buf) || git_path_root(ceil) == -1)
   continue;

  strncpy(buf, ceil, len);
  buf[len] = '\0';

  if (p_realpath(buf, buf2) == ((void*)0))
   continue;

  len = strlen(buf2);
  if (len > 0 && buf2[len-1] == '/')
   buf[--len] = '\0';

  if (!strncmp(path, buf2, len) &&
   (path[len] == '/' || !path[len]) &&
   len > max_len)
  {
   max_len = len;
  }
 }

 return (max_len <= min_len ? min_len : max_len);
}
