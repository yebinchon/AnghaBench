
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DFR ;
 unsigned long APIC_DFR_VALUE ;
 int APIC_LDR ;
 unsigned long APIC_LDR_MASK ;
 unsigned long SET_APIC_LOGICAL_ID (unsigned long) ;
 unsigned long apic_read (int ) ;
 int apic_write (int ,unsigned long) ;
 unsigned long smp_processor_id () ;

__attribute__((used)) static void default_init_apic_ldr(void)
{
 unsigned long val;

 apic_write(APIC_DFR, APIC_DFR_VALUE);
 val = apic_read(APIC_LDR) & ~APIC_LDR_MASK;
 val |= SET_APIC_LOGICAL_ID(1UL << smp_processor_id());
 apic_write(APIC_LDR, val);
}
