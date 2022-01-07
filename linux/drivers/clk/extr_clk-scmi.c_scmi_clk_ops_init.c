
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct clk_init_data* init; } ;
struct scmi_clk {TYPE_2__* info; TYPE_3__ hw; } ;
struct device {int dummy; } ;
struct clk_init_data {int name; int * ops; int num_parents; int flags; } ;
struct TYPE_5__ {int max_rate; int min_rate; } ;
struct TYPE_6__ {TYPE_1__ range; int name; } ;


 int CLK_GET_RATE_NOCACHE ;
 int clk_hw_set_rate_range (TYPE_3__*,int ,int ) ;
 int devm_clk_hw_register (struct device*,TYPE_3__*) ;
 int scmi_clk_ops ;

__attribute__((used)) static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk)
{
 int ret;
 struct clk_init_data init = {
  .flags = CLK_GET_RATE_NOCACHE,
  .num_parents = 0,
  .ops = &scmi_clk_ops,
  .name = sclk->info->name,
 };

 sclk->hw.init = &init;
 ret = devm_clk_hw_register(dev, &sclk->hw);
 if (!ret)
  clk_hw_set_rate_range(&sclk->hw, sclk->info->range.min_rate,
          sclk->info->range.max_rate);
 return ret;
}
