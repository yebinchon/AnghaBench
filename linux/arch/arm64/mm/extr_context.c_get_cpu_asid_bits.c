
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ID_AA64MMFR0_ASID_SHIFT ;
 int ID_AA64MMFR0_EL1 ;
 int cpuid_feature_extract_unsigned_field (int ,int ) ;
 int pr_warn (char*,int ,int) ;
 int read_cpuid (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static u32 get_cpu_asid_bits(void)
{
 u32 asid;
 int fld = cpuid_feature_extract_unsigned_field(read_cpuid(ID_AA64MMFR0_EL1),
      ID_AA64MMFR0_ASID_SHIFT);

 switch (fld) {
 default:
  pr_warn("CPU%d: Unknown ASID size (%d); assuming 8-bit\n",
     smp_processor_id(), fld);

 case 0:
  asid = 8;
  break;
 case 2:
  asid = 16;
 }

 return asid;
}
