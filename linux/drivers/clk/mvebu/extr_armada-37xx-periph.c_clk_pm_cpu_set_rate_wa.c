
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int ARMADA_37XX_DVFS_LOAD_1 ;
 int ARMADA_37XX_NB_CPU_LOAD ;
 unsigned int ARMADA_37XX_NB_CPU_LOAD_MASK ;
 int msleep (int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void clk_pm_cpu_set_rate_wa(unsigned long rate, struct regmap *base)
{
 unsigned int cur_level;

 if (rate != 1200 * 1000 * 1000)
  return;

 regmap_read(base, ARMADA_37XX_NB_CPU_LOAD, &cur_level);
 cur_level &= ARMADA_37XX_NB_CPU_LOAD_MASK;
 if (cur_level <= ARMADA_37XX_DVFS_LOAD_1)
  return;

 regmap_update_bits(base, ARMADA_37XX_NB_CPU_LOAD,
      ARMADA_37XX_NB_CPU_LOAD_MASK,
      ARMADA_37XX_DVFS_LOAD_1);
 msleep(20);
}
