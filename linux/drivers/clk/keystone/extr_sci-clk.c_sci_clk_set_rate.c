
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sci_clk {int clk_id; int dev_id; TYPE_2__* provider; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int sci; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_freq ) (int ,int ,int ,unsigned long,unsigned long,unsigned long) ;} ;


 int stub1 (int ,int ,int ,unsigned long,unsigned long,unsigned long) ;
 struct sci_clk* to_sci_clk (struct clk_hw*) ;

__attribute__((used)) static int sci_clk_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct sci_clk *clk = to_sci_clk(hw);

 return clk->provider->ops->set_freq(clk->provider->sci, clk->dev_id,
         clk->clk_id, rate, rate, rate);
}
