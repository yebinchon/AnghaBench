
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_corediv_soc_desc {int enable_bit_offset; } ;
struct clk_corediv_desc {int fieldbit; } ;
struct clk_corediv {int reg; struct clk_corediv_desc* desc; struct clk_corediv_soc_desc* soc_desc; } ;


 int BIT (int ) ;
 int readl (int ) ;
 struct clk_corediv* to_corediv_clk (struct clk_hw*) ;

__attribute__((used)) static int clk_corediv_is_enabled(struct clk_hw *hwclk)
{
 struct clk_corediv *corediv = to_corediv_clk(hwclk);
 const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
 const struct clk_corediv_desc *desc = corediv->desc;
 u32 enable_mask = BIT(desc->fieldbit) << soc_desc->enable_bit_offset;

 return !!(readl(corediv->reg) & enable_mask);
}
