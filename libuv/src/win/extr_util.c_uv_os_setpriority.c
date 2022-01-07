
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
 int HIGH_PRIORITY_CLASS ;
 int IDLE_PRIORITY_CLASS ;
 int NORMAL_PRIORITY_CLASS ;
 int PROCESS_SET_INFORMATION ;
 int REALTIME_PRIORITY_CLASS ;
 scalar_t__ SetPriorityClass (int ,int) ;
 int UV_EINVAL ;
 int UV_PRIORITY_ABOVE_NORMAL ;
 int UV_PRIORITY_BELOW_NORMAL ;
 int UV_PRIORITY_HIGH ;
 int UV_PRIORITY_HIGHEST ;
 int UV_PRIORITY_LOW ;
 int UV_PRIORITY_NORMAL ;
 int uv__get_handle (int ,int ,int *) ;
 int uv_translate_sys_error (int ) ;

int uv_os_setpriority(uv_pid_t pid, int priority) {
  HANDLE handle;
  int priority_class;
  int r;


  if (priority < UV_PRIORITY_HIGHEST || priority > UV_PRIORITY_LOW)
    return UV_EINVAL;
  else if (priority < UV_PRIORITY_HIGH)
    priority_class = REALTIME_PRIORITY_CLASS;
  else if (priority < UV_PRIORITY_ABOVE_NORMAL)
    priority_class = HIGH_PRIORITY_CLASS;
  else if (priority < UV_PRIORITY_NORMAL)
    priority_class = ABOVE_NORMAL_PRIORITY_CLASS;
  else if (priority < UV_PRIORITY_BELOW_NORMAL)
    priority_class = NORMAL_PRIORITY_CLASS;
  else if (priority < UV_PRIORITY_LOW)
    priority_class = BELOW_NORMAL_PRIORITY_CLASS;
  else
    priority_class = IDLE_PRIORITY_CLASS;

  r = uv__get_handle(pid, PROCESS_SET_INFORMATION, &handle);

  if (r != 0)
    return r;

  if (SetPriorityClass(handle, priority_class) == 0)
    r = uv_translate_sys_error(GetLastError());

  CloseHandle(handle);
  return r;
}
