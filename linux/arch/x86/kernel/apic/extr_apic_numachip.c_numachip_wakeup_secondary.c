
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long APIC_DM_INIT ;
 unsigned long APIC_DM_STARTUP ;
 int numachip_apic_icr_write (int,unsigned long) ;

__attribute__((used)) static int numachip_wakeup_secondary(int phys_apicid, unsigned long start_rip)
{
 numachip_apic_icr_write(phys_apicid, APIC_DM_INIT);
 numachip_apic_icr_write(phys_apicid, APIC_DM_STARTUP |
  (start_rip >> 12));

 return 0;
}
