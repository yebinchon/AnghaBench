
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_pid_t ;
typedef int HANDLE ;


 int ABOVE_NORMAL_PRIORITY_CLASS ;
 int BELOW_NORMAL_PRIORITY_CLASS ;
 int CloseHandle (int ) ;
 int GetLastError () ;
 int GetPriorityClass (int ) ;
 int HIGH_PRIORITY_CLASS ;
 int NORMAL_PRIORITY_CLASS ;
 int PROCESS_QUERY_LIMITED_INFORMATION ;
 int REALTIME_PRIORITY_CLASS ;
 int UV_EINVAL ;
 int UV_PRIORITY_ABOVE_NORMAL ;
 int UV_PRIORITY_BELOW_NORMAL ;
 int UV_PRIORITY_HIGH ;
 int UV_PRIORITY_HIGHEST ;
 int UV_PRIORITY_LOW ;
 int UV_PRIORITY_NORMAL ;
 int uv__get_handle (int ,int ,int *) ;
 int uv_translate_sys_error (int ) ;

int uv_os_getpriority(uv_pid_t pid, int* priority) {
  HANDLE handle;
  int r;

  if (priority == ((void*)0))
    return UV_EINVAL;

  r = uv__get_handle(pid, PROCESS_QUERY_LIMITED_INFORMATION, &handle);

  if (r != 0)
    return r;

  r = GetPriorityClass(handle);

  if (r == 0) {
    r = uv_translate_sys_error(GetLastError());
  } else {

    if (r == REALTIME_PRIORITY_CLASS)
      *priority = UV_PRIORITY_HIGHEST;
    else if (r == HIGH_PRIORITY_CLASS)
      *priority = UV_PRIORITY_HIGH;
    else if (r == ABOVE_NORMAL_PRIORITY_CLASS)
      *priority = UV_PRIORITY_ABOVE_NORMAL;
    else if (r == NORMAL_PRIORITY_CLASS)
      *priority = UV_PRIORITY_NORMAL;
    else if (r == BELOW_NORMAL_PRIORITY_CLASS)
      *priority = UV_PRIORITY_BELOW_NORMAL;
    else
      *priority = UV_PRIORITY_LOW;

    r = 0;
  }

  CloseHandle(handle);
  return r;
}
