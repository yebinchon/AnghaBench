
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk_hw {int dummy; } ;
struct clk_corediv_soc_desc {scalar_t__ ratio_offset; } ;
struct clk_corediv_desc {unsigned long offset; unsigned long mask; } ;
struct clk_corediv {scalar_t__ reg; struct clk_corediv_desc* desc; struct clk_corediv_soc_desc* soc_desc; } ;


 unsigned long readl (scalar_t__) ;
 struct clk_corediv* to_corediv_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_corediv_recalc_rate(struct clk_hw *hwclk,
      unsigned long parent_rate)
{
 struct clk_corediv *corediv = to_corediv_clk(hwclk);
 const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
 const struct clk_corediv_desc *desc = corediv->desc;
 u32 reg, div;

 reg = readl(corediv->reg + soc_desc->ratio_offset);
 div = (reg >> desc->offset) & desc->mask;
 return parent_rate / div;
}
