
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOOKS_LIKE_DRIVE_PREFIX (char const*) ;

int git_path_root(const char *path)
{
 int offset = 0;


 if (LOOKS_LIKE_DRIVE_PREFIX(path))
  offset += 2;
 if (path[offset] == '/')
  return offset;

 return -1;
}
