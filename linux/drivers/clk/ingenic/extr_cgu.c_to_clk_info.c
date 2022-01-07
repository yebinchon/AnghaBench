
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_clk {size_t idx; struct ingenic_cgu* cgu; } ;
struct ingenic_cgu_clk_info {scalar_t__ type; } ;
struct ingenic_cgu {struct ingenic_cgu_clk_info* clock_info; } ;


 int BUG_ON (int) ;
 scalar_t__ CGU_CLK_PLL ;

__attribute__((used)) static inline const struct ingenic_cgu_clk_info *to_clk_info(
  struct ingenic_clk *ingenic_clk)
{
 struct ingenic_cgu *cgu = ingenic_clk->cgu;
 const struct ingenic_cgu_clk_info *clk_info;

 clk_info = &cgu->clock_info[ingenic_clk->idx];
 BUG_ON(clk_info->type != CGU_CLK_PLL);

 return clk_info;
}
