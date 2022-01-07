
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int git_win32_path ;


 scalar_t__ getfinalpath_w (int ,int ) ;
 int lstat_w (int ,struct stat*,int) ;

__attribute__((used)) static int follow_and_lstat_link(git_win32_path path, struct stat* buf)
{
 git_win32_path target_w;

 if (getfinalpath_w(target_w, path) < 0)
  return -1;

 return lstat_w(target_w, buf, 0);
}
