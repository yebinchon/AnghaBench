
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_branch {scalar_t__ halt_check; int halt_bit; int halt_reg; TYPE_1__ clkr; } ;


 int BIT (int ) ;
 scalar_t__ BRANCH_HALT_ENABLE ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool clk_branch_check_halt(const struct clk_branch *br, bool enabling)
{
 bool invert = (br->halt_check == BRANCH_HALT_ENABLE);
 u32 val;

 regmap_read(br->clkr.regmap, br->halt_reg, &val);

 val &= BIT(br->halt_bit);
 if (invert)
  val = !val;

 return !!val == !enabling;
}
