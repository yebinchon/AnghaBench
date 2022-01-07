
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dfll {int lut_min; int lut_max; scalar_t__ lut_base; int * lut; int vdd_reg; } ;


 int MAX_DFLL_VOLTAGES ;
 int __raw_writel (int ,scalar_t__) ;
 int dfll_i2c_wmb (struct tegra_dfll*) ;
 int regulator_list_hardware_vsel (int ,int ) ;

__attribute__((used)) static void dfll_load_i2c_lut(struct tegra_dfll *td)
{
 int i, lut_index;
 u32 val;

 for (i = 0; i < MAX_DFLL_VOLTAGES; i++) {
  if (i < td->lut_min)
   lut_index = td->lut_min;
  else if (i > td->lut_max)
   lut_index = td->lut_max;
  else
   lut_index = i;

  val = regulator_list_hardware_vsel(td->vdd_reg,
           td->lut[lut_index]);
  __raw_writel(val, td->lut_base + i * 4);
 }

 dfll_i2c_wmb(td);
}
