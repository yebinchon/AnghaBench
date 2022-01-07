
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef char* git_win32_utf8_path ;


 int GIT_WIN_PATH_UTF8 ;
 int git__utf16_to_8 (char*,int ,int const*) ;
 int git_path_mkposix (char*) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ path__is_nt_namespace (int const*) ;
 scalar_t__ wcsncmp (int const*,char*,int) ;

int git_win32_path_to_utf8(git_win32_utf8_path dest, const wchar_t *src)
{
 char *out = dest;
 int len;


 if (path__is_nt_namespace(src)) {
  src += 4;


  if (wcsncmp(src, L"UNC\\", 4) == 0) {
   src += 4;

   memcpy(dest, "\\\\", 2);
   out = dest + 2;
  }
 }

 if ((len = git__utf16_to_8(out, GIT_WIN_PATH_UTF8, src)) < 0)
  return len;

 git_path_mkposix(dest);

 return len;
}
