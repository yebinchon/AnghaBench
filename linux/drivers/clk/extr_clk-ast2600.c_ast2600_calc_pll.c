
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 int BIT (int) ;
 struct clk_hw* clk_hw_register_fixed_factor (int *,char const*,char*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static struct clk_hw *ast2600_calc_pll(const char *name, u32 val)
{
 unsigned int mult, div;

 if (val & BIT(24)) {

  mult = div = 1;
 } else {

  u32 m = val & 0x1fff;
  u32 n = (val >> 13) & 0x3f;
  u32 p = (val >> 19) & 0xf;
  mult = (m + 1) / (n + 1);
  div = (p + 1);
 }
 return clk_hw_register_fixed_factor(((void*)0), name, "clkin", 0,
   mult, div);
}
