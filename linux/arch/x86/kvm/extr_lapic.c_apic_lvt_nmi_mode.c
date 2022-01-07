
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int APIC_DM_NMI ;
 int APIC_LVT_MASKED ;
 int APIC_MODE_MASK ;

__attribute__((used)) static inline int apic_lvt_nmi_mode(u32 lvt_val)
{
 return (lvt_val & (APIC_MODE_MASK | APIC_LVT_MASKED)) == APIC_DM_NMI;
}
