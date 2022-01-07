
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int apic_smt_update () ;
 int cpu_bugs_smt_update () ;

void arch_smt_update(void)
{

 cpu_bugs_smt_update();

 apic_smt_update();
}
