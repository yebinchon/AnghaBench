
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_win32_utf8_path ;
typedef int git_win32_path ;


 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;
 scalar_t__ git_win32_path_readlink_w (int ,int ) ;
 int git_win32_path_to_utf8 (int ,int ) ;
 int memcpy (char*,int ,size_t) ;
 size_t min (size_t,size_t) ;

int p_readlink(const char *path, char *buf, size_t bufsiz)
{
 git_win32_path path_w, target_w;
 git_win32_utf8_path target;
 int len;
 if (git_win32_path_from_utf8(path_w, path) < 0 ||
  git_win32_path_readlink_w(target_w, path_w) < 0 ||
  (len = git_win32_path_to_utf8(target, target_w)) < 0)
  return -1;

 bufsiz = min((size_t)len, bufsiz);
 memcpy(buf, target, bufsiz);

 return (int)bufsiz;
}
