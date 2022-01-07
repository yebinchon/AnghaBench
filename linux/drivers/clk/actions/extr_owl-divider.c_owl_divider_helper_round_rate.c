
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_divider_hw {int div_flags; int width; int table; } ;
struct owl_clk_common {int hw; } ;


 long divider_round_rate (int *,unsigned long,unsigned long*,int ,int ,int ) ;

long owl_divider_helper_round_rate(struct owl_clk_common *common,
    const struct owl_divider_hw *div_hw,
    unsigned long rate,
    unsigned long *parent_rate)
{
 return divider_round_rate(&common->hw, rate, parent_rate,
      div_hw->table, div_hw->width,
      div_hw->div_flags);
}
