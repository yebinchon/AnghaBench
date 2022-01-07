
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int prio; } ;


 int cpu_iic ;
 int out_be64 (int *,int) ;
 TYPE_2__* this_cpu_ptr (int *) ;

void iic_setup_cpu(void)
{
 out_be64(&this_cpu_ptr(&cpu_iic)->regs->prio, 0xff);
}
