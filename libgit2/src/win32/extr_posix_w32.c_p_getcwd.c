
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int git_win32_path ;
typedef scalar_t__ DWORD ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GIT_WIN_PATH_UTF16 ;
 scalar_t__ GetLastError () ;
 int * _wgetcwd (int ,int ) ;
 int errno ;
 scalar_t__ git__utf16_to_8 (char*,size_t,int *) ;

int p_getcwd(char *buffer_out, size_t size)
{
 git_win32_path buf;
 wchar_t *cwd = _wgetcwd(buf, GIT_WIN_PATH_UTF16);

 if (!cwd)
  return -1;


 if (git__utf16_to_8(buffer_out, size, cwd) < 0) {
  DWORD code = GetLastError();

  if (code == ERROR_INSUFFICIENT_BUFFER)
   errno = ERANGE;
  else
   errno = EINVAL;

  return -1;
 }

 return 0;
}
