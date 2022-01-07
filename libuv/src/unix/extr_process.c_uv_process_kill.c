
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; } ;
typedef TYPE_1__ uv_process_t ;


 int uv_kill (int ,int) ;

int uv_process_kill(uv_process_t* process, int signum) {
  return uv_kill(process->pid, signum);
}
