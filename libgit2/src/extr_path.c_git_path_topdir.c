
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int assert (char const*) ;
 size_t strlen (char const*) ;

const char *git_path_topdir(const char *path)
{
 size_t len;
 ssize_t i;

 assert(path);
 len = strlen(path);

 if (!len || path[len - 1] != '/')
  return ((void*)0);

 for (i = (ssize_t)len - 2; i >= 0; --i)
  if (path[i] == '/')
   break;

 return &path[i + 1];
}
