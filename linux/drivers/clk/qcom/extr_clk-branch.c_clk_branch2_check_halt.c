
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_branch {int halt_reg; TYPE_1__ clkr; } ;


 int BRANCH_CLK_OFF ;
 int BRANCH_NOC_FSM_STATUS_MASK ;
 int BRANCH_NOC_FSM_STATUS_ON ;
 int BRANCH_NOC_FSM_STATUS_SHIFT ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool clk_branch2_check_halt(const struct clk_branch *br, bool enabling)
{
 u32 val;
 u32 mask;

 mask = BRANCH_NOC_FSM_STATUS_MASK << BRANCH_NOC_FSM_STATUS_SHIFT;
 mask |= BRANCH_CLK_OFF;

 regmap_read(br->clkr.regmap, br->halt_reg, &val);

 if (enabling) {
  val &= mask;
  return (val & BRANCH_CLK_OFF) == 0 ||
   val == BRANCH_NOC_FSM_STATUS_ON;
 } else {
  return val & BRANCH_CLK_OFF;
 }
}
