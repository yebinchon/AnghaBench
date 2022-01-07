
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ID_AA64DFR0_DEBUGVER_SHIFT ;
 int SYS_ID_AA64DFR0_EL1 ;
 int cpuid_feature_extract_unsigned_field (int ,int ) ;
 int read_sanitised_ftr_reg (int ) ;

u8 debug_monitors_arch(void)
{
 return cpuid_feature_extract_unsigned_field(read_sanitised_ftr_reg(SYS_ID_AA64DFR0_EL1),
      ID_AA64DFR0_DEBUGVER_SHIFT);
}
