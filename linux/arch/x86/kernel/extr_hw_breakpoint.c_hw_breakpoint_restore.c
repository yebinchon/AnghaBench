
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int debugreg6; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int __this_cpu_read (int ) ;
 int * cpu_debugreg ;
 int cpu_dr7 ;
 TYPE_2__* current ;
 int set_debugreg (int ,int) ;

void hw_breakpoint_restore(void)
{
 set_debugreg(__this_cpu_read(cpu_debugreg[0]), 0);
 set_debugreg(__this_cpu_read(cpu_debugreg[1]), 1);
 set_debugreg(__this_cpu_read(cpu_debugreg[2]), 2);
 set_debugreg(__this_cpu_read(cpu_debugreg[3]), 3);
 set_debugreg(current->thread.debugreg6, 6);
 set_debugreg(__this_cpu_read(cpu_dr7), 7);
}
