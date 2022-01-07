
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int* git_win32_path ;


 int GIT_WIN_PATH_UTF16 ;
 int GetShortPathNameW (int*,int*,int) ;
 char* git__malloc (int) ;
 int git__utf16_to_8 (char*,int,int*) ;
 scalar_t__ git_win32_path_from_utf8 (int*,char const*) ;

char *git_win32_path_8dot3_name(const char *path)
{
 git_win32_path longpath, shortpath;
 wchar_t *start;
 char *shortname;
 int len, namelen = 1;

 if (git_win32_path_from_utf8(longpath, path) < 0)
  return ((void*)0);

 len = GetShortPathNameW(longpath, shortpath, GIT_WIN_PATH_UTF16);

 while (len && shortpath[len-1] == L'\\')
  shortpath[--len] = L'\0';

 if (len == 0 || len >= GIT_WIN_PATH_UTF16)
  return ((void*)0);

 for (start = shortpath + (len - 1);
  start > shortpath && *(start-1) != '/' && *(start-1) != '\\';
  start--)
  namelen++;





 if (namelen > 12 || (shortname = git__malloc(namelen + 1)) == ((void*)0))
  return ((void*)0);

 if ((len = git__utf16_to_8(shortname, namelen + 1, start)) < 0)
  return ((void*)0);

 return shortname;
}
