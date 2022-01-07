
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_dfll {scalar_t__ base; } ;


 scalar_t__ DFLL_I2C_CFG ;
 int WARN_ON (int) ;
 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dfll_writel(struct tegra_dfll *td, u32 val, u32 offs)
{
 WARN_ON(offs >= DFLL_I2C_CFG);
 __raw_writel(val, td->base + offs);
}
