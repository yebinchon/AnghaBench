
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_win32_path ;
typedef int DWORD ;


 int FILE_ATTRIBUTE_HIDDEN ;
 int GIT_ERROR_OS ;
 int GetFileAttributesW (int ) ;
 int INVALID_FILE_ATTRIBUTES ;
 int SetFileAttributesW (int ,int) ;
 int git_error_set (int ,char*,char*,char const*) ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;

int git_win32__set_hidden(const char *path, bool hidden)
{
 git_win32_path buf;
 DWORD attrs, newattrs;

 if (git_win32_path_from_utf8(buf, path) < 0)
  return -1;

 attrs = GetFileAttributesW(buf);


 if (attrs == INVALID_FILE_ATTRIBUTES)
  return -1;

 if (hidden)
  newattrs = attrs | FILE_ATTRIBUTE_HIDDEN;
 else
  newattrs = attrs & ~FILE_ATTRIBUTE_HIDDEN;

 if (attrs != newattrs && !SetFileAttributesW(buf, newattrs)) {
  git_error_set(GIT_ERROR_OS, "failed to %s hidden bit for '%s'",
   hidden ? "set" : "unset", path);
  return -1;
 }

 return 0;
}
