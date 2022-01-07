
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_dfll {scalar_t__ i2c_base; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dfll_i2c_writel(struct tegra_dfll *td, u32 val, u32 offs)
{
 __raw_writel(val, td->i2c_base + offs);
}
