
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int git_win32_path ;


 int git_win32_path_from_utf8 (int ,char const*) ;
 int git_win32_path_trim_end (int ,int) ;
 int lstat_w (int ,struct stat*,int) ;

__attribute__((used)) static int do_lstat(const char *path, struct stat *buf, bool posixly_correct)
{
 git_win32_path path_w;
 int len;

 if ((len = git_win32_path_from_utf8(path_w, path)) < 0)
  return -1;

 git_win32_path_trim_end(path_w, len);

 return lstat_w(path_w, buf, posixly_correct);
}
