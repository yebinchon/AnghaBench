
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 int AST2400_HPLL_BYPASS_EN ;
 struct clk_hw* clk_hw_register_fixed_factor (int *,char const*,char*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static struct clk_hw *aspeed_ast2400_calc_pll(const char *name, u32 val)
{
 unsigned int mult, div;

 if (val & AST2400_HPLL_BYPASS_EN) {

  mult = div = 1;
 } else {

  u32 n = (val >> 5) & 0x3f;
  u32 od = (val >> 4) & 0x1;
  u32 d = val & 0xf;

  mult = (2 - od) * (n + 2);
  div = d + 1;
 }
 return clk_hw_register_fixed_factor(((void*)0), name, "clkin", 0,
   mult, div);
}
