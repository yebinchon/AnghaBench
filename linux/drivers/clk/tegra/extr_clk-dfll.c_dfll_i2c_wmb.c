
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {int dummy; } ;


 int DFLL_I2C_CFG ;
 int dfll_i2c_readl (struct tegra_dfll*,int ) ;

__attribute__((used)) static inline void dfll_i2c_wmb(struct tegra_dfll *td)
{
 dfll_i2c_readl(td, DFLL_I2C_CFG);
}
