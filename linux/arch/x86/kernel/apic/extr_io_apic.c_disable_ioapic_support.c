
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int noioapicquirk ;
 int noioapicreroute ;
 int skip_ioapic_setup ;

void disable_ioapic_support(void)
{




 skip_ioapic_setup = 1;
}
