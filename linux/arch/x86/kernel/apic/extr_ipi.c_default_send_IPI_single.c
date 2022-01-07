
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_IPI_mask ) (int ,int) ;} ;


 TYPE_1__* apic ;
 int cpumask_of (int) ;
 int stub1 (int ,int) ;

void default_send_IPI_single(int cpu, int vector)
{
 apic->send_IPI_mask(cpumask_of(cpu), vector);
}
