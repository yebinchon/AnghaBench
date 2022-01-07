
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_dto {scalar_t__ src_offset; scalar_t__ inc_offset; } ;


 int BIT (int ) ;
 int DTO_RESL_DOUBLE ;
 int DTO_RESL_NORMAL ;
 scalar_t__ SIRFSOC_CLKC_AUDIO_DTO_DROFF ;
 scalar_t__ SIRFSOC_CLKC_AUDIO_DTO_SRC ;
 int clkc_readl (scalar_t__) ;
 int do_div (int,int ) ;
 struct clk_dto* to_dtoclk (struct clk_hw*) ;

__attribute__((used)) static unsigned long dto_clk_recalc_rate(struct clk_hw *hw,
 unsigned long parent_rate)
{
 u64 rate = parent_rate;
 struct clk_dto *clk = to_dtoclk(hw);
 u32 finc = clkc_readl(clk->inc_offset);
 u32 droff = clkc_readl(clk->src_offset + SIRFSOC_CLKC_AUDIO_DTO_DROFF - SIRFSOC_CLKC_AUDIO_DTO_SRC);

 rate *= finc;
 if (droff & BIT(0))

  do_div(rate, DTO_RESL_NORMAL);
 else
  do_div(rate, DTO_RESL_DOUBLE);

 return rate;
}
