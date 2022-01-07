
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * apic ;
 int apic_physflat ;
 scalar_t__ jailhouse_paravirt () ;
 int num_possible_cpus () ;

__attribute__((used)) static int physflat_probe(void)
{
 if (apic == &apic_physflat || num_possible_cpus() > 8 ||
     jailhouse_paravirt())
  return 1;

 return 0;
}
