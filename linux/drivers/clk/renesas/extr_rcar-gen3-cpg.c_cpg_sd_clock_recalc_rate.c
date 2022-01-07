
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd_clock {size_t cur_div_idx; TYPE_1__* div_table; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int div; } ;


 unsigned long DIV_ROUND_CLOSEST (unsigned long,int ) ;
 struct sd_clock* to_sd_clock (struct clk_hw*) ;

__attribute__((used)) static unsigned long cpg_sd_clock_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct sd_clock *clock = to_sd_clock(hw);

 return DIV_ROUND_CLOSEST(parent_rate,
     clock->div_table[clock->cur_div_idx].div);
}
