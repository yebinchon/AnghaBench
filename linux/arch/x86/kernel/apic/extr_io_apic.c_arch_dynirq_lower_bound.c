
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gsi_top ;
 scalar_t__ ioapic_dynirq_base ;
 int ioapic_initialized ;

unsigned int arch_dynirq_lower_bound(unsigned int from)
{




 if (!ioapic_initialized)
  return gsi_top;




 return ioapic_dynirq_base ? : from;
}
