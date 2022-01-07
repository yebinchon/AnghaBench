
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




 int HV_X64_MSR_EOI ;
 int HV_X64_MSR_TPR ;
 int native_apic_mem_read (int) ;
 int rdmsr (int ,int,int) ;

__attribute__((used)) static u32 hv_apic_read(u32 reg)
{
 u32 reg_val, hi;

 switch (reg) {
 case 129:
  rdmsr(HV_X64_MSR_EOI, reg_val, hi);
  return reg_val;
 case 128:
  rdmsr(HV_X64_MSR_TPR, reg_val, hi);
  return reg_val;

 default:
  return native_apic_mem_read(reg);
 }
}
