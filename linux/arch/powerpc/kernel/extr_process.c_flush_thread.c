
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread; } ;


 TYPE_1__* current ;
 int flush_ptrace_hw_breakpoint (TYPE_1__*) ;
 int set_debug_reg_defaults (int *) ;

void flush_thread(void)
{



 set_debug_reg_defaults(&current->thread);

}
