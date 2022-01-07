
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u64 ;
struct sci_clk {int clk_id; int dev_id; TYPE_2__* provider; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int dev; int sci; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_freq ) (int ,int ,int ,unsigned long*) ;} ;


 int dev_err (int ,char*,int ,int ,int) ;
 int stub1 (int ,int ,int ,unsigned long*) ;
 struct sci_clk* to_sci_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long sci_clk_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct sci_clk *clk = to_sci_clk(hw);
 u64 freq;
 int ret;

 ret = clk->provider->ops->get_freq(clk->provider->sci, clk->dev_id,
        clk->clk_id, &freq);
 if (ret) {
  dev_err(clk->provider->dev,
   "recalc-rate failed for dev=%d, clk=%d, ret=%d\n",
   clk->dev_id, clk->clk_id, ret);
  return 0;
 }

 return freq;
}
