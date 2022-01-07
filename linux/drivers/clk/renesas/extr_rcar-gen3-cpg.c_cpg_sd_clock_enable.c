
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
struct sd_clock {size_t cur_div_idx; TYPE_2__* div_table; TYPE_1__ csn; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int val; } ;


 int CPG_SD_STP_MASK ;
 int cpg_reg_modify (int ,int,int) ;
 struct sd_clock* to_sd_clock (struct clk_hw*) ;

__attribute__((used)) static int cpg_sd_clock_enable(struct clk_hw *hw)
{
 struct sd_clock *clock = to_sd_clock(hw);

 cpg_reg_modify(clock->csn.reg, CPG_SD_STP_MASK,
         clock->div_table[clock->cur_div_idx].val &
         CPG_SD_STP_MASK);

 return 0;
}
