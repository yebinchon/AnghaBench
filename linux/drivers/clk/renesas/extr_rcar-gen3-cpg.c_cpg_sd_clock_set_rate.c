
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
struct sd_clock {unsigned int div_num; unsigned int cur_div_idx; TYPE_2__* div_table; TYPE_1__ csn; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {unsigned int div; int val; } ;


 int CPG_SD_FC_MASK ;
 int CPG_SD_STP_MASK ;
 int EINVAL ;
 int cpg_reg_modify (int ,int,int) ;
 unsigned int cpg_sd_clock_calc_div (struct sd_clock*,unsigned long,unsigned long) ;
 struct sd_clock* to_sd_clock (struct clk_hw*) ;

__attribute__((used)) static int cpg_sd_clock_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct sd_clock *clock = to_sd_clock(hw);
 unsigned int div = cpg_sd_clock_calc_div(clock, rate, parent_rate);
 unsigned int i;

 for (i = 0; i < clock->div_num; i++)
  if (div == clock->div_table[i].div)
   break;

 if (i >= clock->div_num)
  return -EINVAL;

 clock->cur_div_idx = i;

 cpg_reg_modify(clock->csn.reg, CPG_SD_STP_MASK | CPG_SD_FC_MASK,
         clock->div_table[i].val &
         (CPG_SD_STP_MASK | CPG_SD_FC_MASK));

 return 0;
}
