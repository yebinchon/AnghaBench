
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct clk_hw {int dummy; } ;
struct clk_dto {scalar_t__ inc_offset; scalar_t__ src_offset; } ;


 unsigned long DTO_RESL_DOUBLE ;
 scalar_t__ SIRFSOC_CLKC_AUDIO_DTO_DROFF ;
 scalar_t__ SIRFSOC_CLKC_AUDIO_DTO_SRC ;
 int clkc_writel (unsigned long,scalar_t__) ;
 int do_div (unsigned long,unsigned long) ;
 struct clk_dto* to_dtoclk (struct clk_hw*) ;

__attribute__((used)) static int dto_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 unsigned long parent_rate)
{
 u64 dividend = rate * DTO_RESL_DOUBLE;
 struct clk_dto *clk = to_dtoclk(hw);

 do_div(dividend, parent_rate);
 clkc_writel(0, clk->src_offset + SIRFSOC_CLKC_AUDIO_DTO_DROFF - SIRFSOC_CLKC_AUDIO_DTO_SRC);
 clkc_writel(dividend, clk->inc_offset);

 return 0;
}
