
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int APIC_DM_NMI ;
 int APIC_LVT1 ;
 unsigned int APIC_LVT_MASKED ;
 unsigned int apic_read (int ) ;
 int apic_write (int ,unsigned int) ;

void uv_nmi_init(void)
{
 unsigned int value;




 value = apic_read(APIC_LVT1) | APIC_DM_NMI;
 value &= ~APIC_LVT_MASKED;
 apic_write(APIC_LVT1, value);
}
