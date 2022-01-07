
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int process; } ;
typedef TYPE_1__ process_info_t ;


 int TerminateProcess (int ,int) ;

int process_terminate(process_info_t *p) {
  if (!TerminateProcess(p->process, 1))
    return -1;
  return 0;
}
