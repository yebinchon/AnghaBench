
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct clk_pfdv2 {int frac_off; int reg; } ;
struct clk_hw {int dummy; } ;


 int CLK_PFDV2_FRAC_MASK ;
 int clk_hw_get_name (struct clk_hw*) ;
 int do_div (int,int) ;
 int pr_debug (char*,int ) ;
 int readl_relaxed (int ) ;
 struct clk_pfdv2* to_clk_pfdv2 (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pfdv2_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct clk_pfdv2 *pfd = to_clk_pfdv2(hw);
 u64 tmp = parent_rate;
 u8 frac;

 frac = (readl_relaxed(pfd->reg) >> pfd->frac_off)
  & CLK_PFDV2_FRAC_MASK;

 if (!frac) {
  pr_debug("clk_pfdv2: %s invalid pfd frac value 0\n",
    clk_hw_get_name(hw));
  return 0;
 }

 tmp *= 18;
 do_div(tmp, frac);

 return tmp;
}
