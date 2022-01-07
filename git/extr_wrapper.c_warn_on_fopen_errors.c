
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 scalar_t__ errno ;
 int warn_on_inaccessible (char const*) ;

int warn_on_fopen_errors(const char *path)
{
 if (errno != ENOENT && errno != ENOTDIR) {
  warn_on_inaccessible(path);
  return -1;
 }

 return 0;
}
