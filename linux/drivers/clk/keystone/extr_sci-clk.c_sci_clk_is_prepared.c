
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sci_clk {int clk_id; int dev_id; TYPE_2__* provider; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int dev; int sci; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* is_on ) (int ,int ,int ,int*,int*) ;} ;


 int dev_err (int ,char*,int ,int ,int) ;
 int stub1 (int ,int ,int ,int*,int*) ;
 struct sci_clk* to_sci_clk (struct clk_hw*) ;

__attribute__((used)) static int sci_clk_is_prepared(struct clk_hw *hw)
{
 struct sci_clk *clk = to_sci_clk(hw);
 bool req_state, current_state;
 int ret;

 ret = clk->provider->ops->is_on(clk->provider->sci, clk->dev_id,
     clk->clk_id, &req_state,
     &current_state);
 if (ret) {
  dev_err(clk->provider->dev,
   "is_prepared failed for dev=%d, clk=%d, ret=%d\n",
   clk->dev_id, clk->clk_id, ret);
  return 0;
 }

 return req_state;
}
