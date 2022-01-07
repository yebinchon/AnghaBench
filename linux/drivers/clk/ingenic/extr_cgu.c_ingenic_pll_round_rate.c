
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_clk {int dummy; } ;
struct ingenic_cgu_clk_info {int dummy; } ;
struct clk_hw {int dummy; } ;


 long ingenic_pll_calc (struct ingenic_cgu_clk_info const*,unsigned long,unsigned long,int *,int *,int *) ;
 struct ingenic_cgu_clk_info* to_clk_info (struct ingenic_clk*) ;
 struct ingenic_clk* to_ingenic_clk (struct clk_hw*) ;

__attribute__((used)) static long
ingenic_pll_round_rate(struct clk_hw *hw, unsigned long req_rate,
         unsigned long *prate)
{
 struct ingenic_clk *ingenic_clk = to_ingenic_clk(hw);
 const struct ingenic_cgu_clk_info *clk_info = to_clk_info(ingenic_clk);

 return ingenic_pll_calc(clk_info, req_rate, *prate, ((void*)0), ((void*)0), ((void*)0));
}
