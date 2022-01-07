
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int errno ;
 int git_path_set_error (int ,char const*,char*) ;
 scalar_t__ p_lstat (char const*,struct stat*) ;

int git_path_lstat(const char *path, struct stat *st)
{
 if (p_lstat(path, st) == 0)
  return 0;

 return git_path_set_error(errno, path, "stat");
}
