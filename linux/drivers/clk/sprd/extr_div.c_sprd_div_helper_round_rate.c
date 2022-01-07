
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_div_internal {int width; } ;
struct sprd_clk_common {int hw; } ;


 long divider_round_rate (int *,unsigned long,unsigned long*,int *,int ,int ) ;

long sprd_div_helper_round_rate(struct sprd_clk_common *common,
    const struct sprd_div_internal *div,
    unsigned long rate,
    unsigned long *parent_rate)
{
 return divider_round_rate(&common->hw, rate, parent_rate,
      ((void*)0), div->width, 0);
}
