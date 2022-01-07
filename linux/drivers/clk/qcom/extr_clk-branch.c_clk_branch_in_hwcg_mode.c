
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_branch {int hwcg_bit; int hwcg_reg; TYPE_1__ clkr; } ;


 int BIT (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool clk_branch_in_hwcg_mode(const struct clk_branch *br)
{
 u32 val;

 if (!br->hwcg_reg)
  return 0;

 regmap_read(br->clkr.regmap, br->hwcg_reg, &val);

 return !!(val & BIT(br->hwcg_bit));
}
