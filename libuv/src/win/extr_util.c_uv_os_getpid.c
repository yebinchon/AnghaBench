
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_pid_t ;


 int GetCurrentProcessId () ;

uv_pid_t uv_os_getpid(void) {
  return GetCurrentProcessId();
}
