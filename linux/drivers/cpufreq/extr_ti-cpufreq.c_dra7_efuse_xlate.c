
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_cpufreq_data {int dummy; } ;





 unsigned long DRA7_EFUSE_HIGH_MPU_OPP ;
 unsigned long DRA7_EFUSE_NOM_MPU_OPP ;
 unsigned long DRA7_EFUSE_OD_MPU_OPP ;

__attribute__((used)) static unsigned long dra7_efuse_xlate(struct ti_cpufreq_data *opp_data,
          unsigned long efuse)
{
 unsigned long calculated_efuse = DRA7_EFUSE_NOM_MPU_OPP;






 switch (efuse) {
 case 130:
 case 129:
  calculated_efuse |= DRA7_EFUSE_HIGH_MPU_OPP;

 case 128:
  calculated_efuse |= DRA7_EFUSE_OD_MPU_OPP;
 }

 return calculated_efuse;
}
