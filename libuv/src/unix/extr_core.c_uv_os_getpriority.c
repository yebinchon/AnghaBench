
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_pid_t ;


 int PRIO_PROCESS ;
 int UV_EINVAL ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 int getpriority (int ,int) ;

int uv_os_getpriority(uv_pid_t pid, int* priority) {
  int r;

  if (priority == ((void*)0))
    return UV_EINVAL;

  errno = 0;
  r = getpriority(PRIO_PROCESS, (int) pid);

  if (r == -1 && errno != 0)
    return UV__ERR(errno);

  *priority = r;
  return 0;
}
