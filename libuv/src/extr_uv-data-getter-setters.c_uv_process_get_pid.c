
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; } ;
typedef TYPE_1__ uv_process_t ;
typedef int uv_pid_t ;



uv_pid_t uv_process_get_pid(const uv_process_t* proc) {
  return proc->pid;
}
