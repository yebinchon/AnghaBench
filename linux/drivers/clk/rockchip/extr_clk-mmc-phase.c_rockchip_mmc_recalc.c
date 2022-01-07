
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long RK3288_MMC_CLKGEN_DIV ;

__attribute__((used)) static unsigned long rockchip_mmc_recalc(struct clk_hw *hw,
      unsigned long parent_rate)
{
 return parent_rate / RK3288_MMC_CLKGEN_DIV;
}
