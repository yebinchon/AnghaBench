
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




 int HV_X64_MSR_EOI ;
 int HV_X64_MSR_TPR ;
 int native_apic_mem_write (int,int) ;
 int wrmsr (int ,int,int ) ;

__attribute__((used)) static void hv_apic_write(u32 reg, u32 val)
{
 switch (reg) {
 case 129:
  wrmsr(HV_X64_MSR_EOI, val, 0);
  break;
 case 128:
  wrmsr(HV_X64_MSR_TPR, val, 0);
  break;
 default:
  native_apic_mem_write(reg, val);
 }
}
