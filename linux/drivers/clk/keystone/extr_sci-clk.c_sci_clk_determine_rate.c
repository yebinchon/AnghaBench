
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sci_clk {int clk_id; int dev_id; TYPE_1__* provider; } ;
struct clk_rate_request {int rate; int max_rate; int min_rate; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int (* get_best_match_freq ) (int ,int ,int ,int ,int ,int ,int *) ;} ;
struct TYPE_3__ {int dev; int sci; TYPE_2__* ops; } ;


 int dev_err (int ,char*,int ,int ,int) ;
 int stub1 (int ,int ,int ,int ,int ,int ,int *) ;
 struct sci_clk* to_sci_clk (struct clk_hw*) ;

__attribute__((used)) static int sci_clk_determine_rate(struct clk_hw *hw,
      struct clk_rate_request *req)
{
 struct sci_clk *clk = to_sci_clk(hw);
 int ret;
 u64 new_rate;

 ret = clk->provider->ops->get_best_match_freq(clk->provider->sci,
            clk->dev_id,
            clk->clk_id,
            req->min_rate,
            req->rate,
            req->max_rate,
            &new_rate);
 if (ret) {
  dev_err(clk->provider->dev,
   "determine-rate failed for dev=%d, clk=%d, ret=%d\n",
   clk->dev_id, clk->clk_id, ret);
  return ret;
 }

 req->rate = new_rate;

 return 0;
}
