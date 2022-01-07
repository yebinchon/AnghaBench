
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg; } ;
struct sd_clock {TYPE_1__ csn; } ;
struct clk_hw {int dummy; } ;


 int CPG_SD_STP_MASK ;
 int cpg_reg_modify (int ,int ,int ) ;
 struct sd_clock* to_sd_clock (struct clk_hw*) ;

__attribute__((used)) static void cpg_sd_clock_disable(struct clk_hw *hw)
{
 struct sd_clock *clock = to_sd_clock(hw);

 cpg_reg_modify(clock->csn.reg, 0, CPG_SD_STP_MASK);
}
