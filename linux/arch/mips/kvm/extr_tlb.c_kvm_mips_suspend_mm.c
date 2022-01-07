
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * active_mm; } ;


 int cpumask_clear_cpu (int,int ) ;
 TYPE_1__* current ;
 int init_mm ;
 int mm_cpumask (int *) ;

void kvm_mips_suspend_mm(int cpu)
{
 cpumask_clear_cpu(cpu, mm_cpumask(current->active_mm));
 current->active_mm = &init_mm;
}
