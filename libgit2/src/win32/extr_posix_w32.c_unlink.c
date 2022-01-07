
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_win32_path ;


 int do_with_retries (int ,int ) ;
 int ensure_writable (int ) ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;
 int unlink_once (int ) ;

int p_unlink(const char *path)
{
 git_win32_path wpath;

 if (git_win32_path_from_utf8(wpath, path) < 0)
  return -1;

 do_with_retries(unlink_once(wpath), ensure_writable(wpath));
}
