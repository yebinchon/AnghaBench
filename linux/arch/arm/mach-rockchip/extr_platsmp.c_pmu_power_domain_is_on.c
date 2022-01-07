
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 int PMU_PWRDN_ST ;
 int pmu ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int pmu_power_domain_is_on(int pd)
{
 u32 val;
 int ret;

 ret = regmap_read(pmu, PMU_PWRDN_ST, &val);
 if (ret < 0)
  return ret;

 return !(val & BIT(pd));
}
