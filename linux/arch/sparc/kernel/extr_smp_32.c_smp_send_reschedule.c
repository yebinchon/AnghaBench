
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* resched ) (int) ;} ;


 TYPE_1__* sparc32_ipi_ops ;
 int stub1 (int) ;

void smp_send_reschedule(int cpu)
{





 sparc32_ipi_ops->resched(cpu);
}
