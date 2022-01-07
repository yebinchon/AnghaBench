
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dfll {scalar_t__ mode; } ;


 scalar_t__ DFLL_CLOSED_LOOP ;
 int DFLL_OUTPUT_FORCE_ENABLE ;
 int EINVAL ;
 unsigned int OUT_MASK ;
 int dfll_set_force_output_enabled (struct tegra_dfll*,int) ;
 int dfll_set_force_output_value (struct tegra_dfll*,unsigned int) ;

__attribute__((used)) static int dfll_force_output(struct tegra_dfll *td, unsigned int out_sel)
{
 u32 val;

 if (out_sel > OUT_MASK)
  return -EINVAL;

 val = dfll_set_force_output_value(td, out_sel);
 if ((td->mode < DFLL_CLOSED_LOOP) &&
     !(val & DFLL_OUTPUT_FORCE_ENABLE)) {
  dfll_set_force_output_enabled(td, 1);
 }

 return 0;
}
