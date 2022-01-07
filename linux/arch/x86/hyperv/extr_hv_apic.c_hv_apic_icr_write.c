
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int HV_X64_MSR_ICR ;
 int SET_APIC_DEST_FIELD (int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void hv_apic_icr_write(u32 low, u32 id)
{
 u64 reg_val;

 reg_val = SET_APIC_DEST_FIELD(id);
 reg_val = reg_val << 32;
 reg_val |= low;

 wrmsrl(HV_X64_MSR_ICR, reg_val);
}
