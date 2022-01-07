
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dfll {int dummy; } ;


 int DFLL_OUTPUT_CFG ;
 int DFLL_OUTPUT_CFG_I2C_ENABLE ;
 int dfll_i2c_readl (struct tegra_dfll*,int ) ;
 int dfll_i2c_wmb (struct tegra_dfll*) ;
 int dfll_i2c_writel (struct tegra_dfll*,int ,int ) ;

__attribute__((used)) static int dfll_i2c_set_output_enabled(struct tegra_dfll *td, bool enable)
{
 u32 val;

 val = dfll_i2c_readl(td, DFLL_OUTPUT_CFG);

 if (enable)
  val |= DFLL_OUTPUT_CFG_I2C_ENABLE;
 else
  val &= ~DFLL_OUTPUT_CFG_I2C_ENABLE;

 dfll_i2c_writel(td, val, DFLL_OUTPUT_CFG);
 dfll_i2c_wmb(td);

 return 0;
}
