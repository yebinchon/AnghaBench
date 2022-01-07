
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int ARMADA_37XX_NB_CPU_LOAD ;
 unsigned int ARMADA_37XX_NB_CPU_LOAD_MASK ;
 unsigned int ARMADA_37XX_NB_TBG_DIV_MASK ;
 unsigned int ARMADA_37XX_NB_TBG_DIV_OFF ;
 int armada_3700_pm_dvfs_update_regs (unsigned int,unsigned int*,unsigned int*) ;
 int regmap_read (struct regmap*,unsigned int,unsigned int*) ;

__attribute__((used)) static unsigned int armada_3700_pm_dvfs_get_cpu_div(struct regmap *base)
{
 unsigned int reg = ARMADA_37XX_NB_CPU_LOAD;
 unsigned int offset = ARMADA_37XX_NB_TBG_DIV_OFF;
 unsigned int load_level, div;






 regmap_read(base, reg, &load_level);





 load_level &= ARMADA_37XX_NB_CPU_LOAD_MASK;
 armada_3700_pm_dvfs_update_regs(load_level, &reg, &offset);

 regmap_read(base, reg, &div);

 return (div >> offset) & ARMADA_37XX_NB_TBG_DIV_MASK;
}
