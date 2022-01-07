
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mm; int active_mm; } ;


 int cpumask_set_cpu (int,int ) ;
 TYPE_1__* current ;
 int mm_cpumask (int ) ;

void kvm_mips_resume_mm(int cpu)
{
 cpumask_set_cpu(cpu, mm_cpumask(current->mm));
 current->active_mm = current->mm;
}
