
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_pid_t ;
typedef int * HANDLE ;


 int ERROR_INVALID_PARAMETER ;
 int FALSE ;
 int * GetCurrentProcess () ;
 int GetLastError () ;
 int * OpenProcess (int,int ,scalar_t__) ;
 int UV_ESRCH ;
 int uv_translate_sys_error (int) ;

__attribute__((used)) static int uv__get_handle(uv_pid_t pid, int access, HANDLE* handle) {
  int r;

  if (pid == 0)
    *handle = GetCurrentProcess();
  else
    *handle = OpenProcess(access, FALSE, pid);

  if (*handle == ((void*)0)) {
    r = GetLastError();

    if (r == ERROR_INVALID_PARAMETER)
      return UV_ESRCH;
    else
      return uv_translate_sys_error(r);
  }

  return 0;
}
