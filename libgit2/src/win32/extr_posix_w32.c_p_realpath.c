
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_win32_path ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOMEM ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GIT_WIN_PATH_UTF16 ;
 int GIT_WIN_PATH_UTF8 ;
 scalar_t__ GetFileAttributesW (int ) ;
 int GetFullPathNameW (int ,int ,int ,int *) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int errno ;
 char* git__malloc (int ) ;
 int git_path_mkposix (char*) ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;
 scalar_t__ git_win32_path_to_utf8 (char*,int ) ;

char *p_realpath(const char *orig_path, char *buffer)
{
 git_win32_path orig_path_w, buffer_w;

 if (git_win32_path_from_utf8(orig_path_w, orig_path) < 0)
  return ((void*)0);




 if (!GetFullPathNameW(orig_path_w, GIT_WIN_PATH_UTF16, buffer_w, ((void*)0))) {
  if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
   errno = ENAMETOOLONG;
  else
   errno = EINVAL;

  return ((void*)0);
 }


 if (GetFileAttributesW(buffer_w) == INVALID_FILE_ATTRIBUTES) {
  errno = ENOENT;
  return ((void*)0);
 }

 if (!buffer && !(buffer = git__malloc(GIT_WIN_PATH_UTF8))) {
  errno = ENOMEM;
  return ((void*)0);
 }




 if (git_win32_path_to_utf8(buffer, buffer_w) < 0)
  return ((void*)0);

 git_path_mkposix(buffer);

 return buffer;
}
