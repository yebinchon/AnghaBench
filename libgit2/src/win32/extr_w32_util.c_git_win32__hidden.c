
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_win32_path ;
typedef int DWORD ;


 int FILE_ATTRIBUTE_HIDDEN ;
 int GetFileAttributesW (int ) ;
 int INVALID_FILE_ATTRIBUTES ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;

int git_win32__hidden(bool *out, const char *path)
{
 git_win32_path buf;
 DWORD attrs;

 if (git_win32_path_from_utf8(buf, path) < 0)
  return -1;

 attrs = GetFileAttributesW(buf);


 if (attrs == INVALID_FILE_ATTRIBUTES)
  return -1;

 *out = (attrs & FILE_ATTRIBUTE_HIDDEN) ? 1 : 0;
 return 0;
}
