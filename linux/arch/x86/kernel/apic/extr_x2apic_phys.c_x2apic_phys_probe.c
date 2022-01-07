
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * apic ;
 int apic_x2apic_phys ;
 scalar_t__ x2apic_fadt_phys () ;
 scalar_t__ x2apic_mode ;
 scalar_t__ x2apic_phys ;

__attribute__((used)) static int x2apic_phys_probe(void)
{
 if (x2apic_mode && (x2apic_phys || x2apic_fadt_phys()))
  return 1;

 return apic == &apic_x2apic_phys;
}
