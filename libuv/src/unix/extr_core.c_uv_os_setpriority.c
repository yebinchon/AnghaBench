
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_pid_t ;


 int PRIO_PROCESS ;
 int UV_EINVAL ;
 int UV_PRIORITY_HIGHEST ;
 int UV_PRIORITY_LOW ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ setpriority (int ,int,int) ;

int uv_os_setpriority(uv_pid_t pid, int priority) {
  if (priority < UV_PRIORITY_HIGHEST || priority > UV_PRIORITY_LOW)
    return UV_EINVAL;

  if (setpriority(PRIO_PROCESS, (int) pid, priority) != 0)
    return UV__ERR(errno);

  return 0;
}
