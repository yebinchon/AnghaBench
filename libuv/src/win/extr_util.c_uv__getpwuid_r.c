
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int uid; int gid; int * shell; int * homedir; int * username; } ;
typedef TYPE_1__ uv_passwd_t ;
typedef int HANDLE ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int CloseHandle (int ) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int GetCurrentProcess () ;
 int GetLastError () ;
 int GetUserNameW (int *,int *) ;
 int GetUserProfileDirectoryW (int ,int *,int *) ;
 int MAX_PATH ;
 scalar_t__ OpenProcessToken (int ,int ,int *) ;
 int TOKEN_READ ;
 int UNLEN ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int uv__convert_utf16_to_utf8 (int *,int,int **) ;
 int uv__free (int *) ;
 int uv_translate_sys_error (int) ;

int uv__getpwuid_r(uv_passwd_t* pwd) {
  HANDLE token;
  wchar_t username[UNLEN + 1];
  wchar_t path[MAX_PATH];
  DWORD bufsize;
  int r;

  if (pwd == ((void*)0))
    return UV_EINVAL;


  if (OpenProcessToken(GetCurrentProcess(), TOKEN_READ, &token) == 0)
    return uv_translate_sys_error(GetLastError());

  bufsize = ARRAY_SIZE(path);
  if (!GetUserProfileDirectoryW(token, path, &bufsize)) {
    r = GetLastError();
    CloseHandle(token);


    if (r == ERROR_INSUFFICIENT_BUFFER)
      return UV_ENOMEM;

    return uv_translate_sys_error(r);
  }

  CloseHandle(token);


  bufsize = ARRAY_SIZE(username);
  if (!GetUserNameW(username, &bufsize)) {
    r = GetLastError();


    if (r == ERROR_INSUFFICIENT_BUFFER)
      return UV_ENOMEM;

    return uv_translate_sys_error(r);
  }

  pwd->homedir = ((void*)0);
  r = uv__convert_utf16_to_utf8(path, -1, &pwd->homedir);

  if (r != 0)
    return r;

  pwd->username = ((void*)0);
  r = uv__convert_utf16_to_utf8(username, -1, &pwd->username);

  if (r != 0) {
    uv__free(pwd->homedir);
    return r;
  }

  pwd->shell = ((void*)0);
  pwd->uid = -1;
  pwd->gid = -1;

  return 0;
}
