
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_win32_path ;
typedef int DWORD ;


 int CreateSymbolicLinkW (int ,int ,int ) ;
 int MAX_PATH ;
 int SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE ;
 int SYMBOLIC_LINK_FLAG_DIRECTORY ;
 scalar_t__ git__utf8_to_16 (int ,int ,char const*) ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;
 scalar_t__ target_is_dir (char const*,char const*) ;

int p_symlink(const char *target, const char *path)
{
 git_win32_path target_w, path_w;
 DWORD dwFlags;

 if (git_win32_path_from_utf8(path_w, path) < 0 ||
     git__utf8_to_16(target_w, MAX_PATH, target) < 0)
  return -1;

 dwFlags = SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE;
 if (target_is_dir(target, path))
  dwFlags |= SYMBOLIC_LINK_FLAG_DIRECTORY;

 if (!CreateSymbolicLinkW(path_w, target_w, dwFlags))
  return -1;

 return 0;
}
