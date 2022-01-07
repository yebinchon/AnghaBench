
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int ENOENT ;
 int errno ;
 int has_dirs_only_path (char const*,int,int) ;
 int lstat (char const*,struct stat*) ;

__attribute__((used)) static int check_path(const char *path, int len, struct stat *st, int skiplen)
{
 const char *slash = path + len;

 while (path < slash && *slash != '/')
  slash--;
 if (!has_dirs_only_path(path, slash - path, skiplen)) {
  errno = ENOENT;
  return -1;
 }
 return lstat(path, st);
}
