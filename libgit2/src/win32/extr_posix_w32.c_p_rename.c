
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_win32_path ;


 int do_with_retries (int ,int ) ;
 int ensure_writable (int ) ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;
 int rename_once (int ,int ) ;

int p_rename(const char *from, const char *to)
{
 git_win32_path wfrom, wto;

 if (git_win32_path_from_utf8(wfrom, from) < 0 ||
  git_win32_path_from_utf8(wto, to) < 0)
  return -1;

 do_with_retries(rename_once(wfrom, wto), ensure_writable(wto));
}
