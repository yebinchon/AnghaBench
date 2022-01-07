
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HV_X64_MSR_ICR ;
 int rdmsrl (int ,int ) ;

__attribute__((used)) static u64 hv_apic_icr_read(void)
{
 u64 reg_val;

 rdmsrl(HV_X64_MSR_ICR, reg_val);
 return reg_val;
}
