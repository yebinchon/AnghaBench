
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* single ) (int) ;} ;


 TYPE_1__* sparc32_ipi_ops ;
 int stub1 (int) ;

void arch_send_call_function_single_ipi(int cpu)
{

 sparc32_ipi_ops->single(cpu);
}
