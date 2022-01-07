
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; } ;
typedef TYPE_1__ process_info_t ;


 int SIGTERM ;
 int kill (int ,int ) ;

int process_terminate(process_info_t *p) {
  return kill(p->pid, SIGTERM);
}
