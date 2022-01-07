
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int git_win32_path ;


 scalar_t__ S_ISLNK (int ) ;
 int follow_and_lstat_link (int ,struct stat*) ;
 int git_win32_path_from_utf8 (int ,char const*) ;
 scalar_t__ lstat_w (int ,struct stat*,int) ;

int p_stat(const char* path, struct stat* buf)
{
 git_win32_path path_w;
 int len;

 if ((len = git_win32_path_from_utf8(path_w, path)) < 0 ||
  lstat_w(path_w, buf, 0) < 0)
  return -1;



 if (S_ISLNK(buf->st_mode))
  return follow_and_lstat_link(path_w, buf);

 return 0;
}
