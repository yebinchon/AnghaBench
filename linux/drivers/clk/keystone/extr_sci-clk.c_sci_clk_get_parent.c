
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sci_clk {scalar_t__ clk_id; int dev_id; TYPE_1__* provider; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int (* get_parent ) (int ,int ,scalar_t__,void*) ;} ;
struct TYPE_3__ {int dev; int sci; TYPE_2__* ops; } ;


 int dev_err (int ,char*,int ,scalar_t__,int) ;
 int stub1 (int ,int ,scalar_t__,void*) ;
 struct sci_clk* to_sci_clk (struct clk_hw*) ;

__attribute__((used)) static u8 sci_clk_get_parent(struct clk_hw *hw)
{
 struct sci_clk *clk = to_sci_clk(hw);
 u32 parent_id = 0;
 int ret;

 ret = clk->provider->ops->get_parent(clk->provider->sci, clk->dev_id,
          clk->clk_id, (void *)&parent_id);
 if (ret) {
  dev_err(clk->provider->dev,
   "get-parent failed for dev=%d, clk=%d, ret=%d\n",
   clk->dev_id, clk->clk_id, ret);
  return 0;
 }

 parent_id = parent_id - clk->clk_id - 1;

 return (u8)parent_id;
}
