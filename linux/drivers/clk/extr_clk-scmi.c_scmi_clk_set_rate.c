
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scmi_clk {int id; TYPE_2__* handle; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* clk_ops; } ;
struct TYPE_3__ {int (* rate_set ) (TYPE_2__*,int ,unsigned long) ;} ;


 int stub1 (TYPE_2__*,int ,unsigned long) ;
 struct scmi_clk* to_scmi_clk (struct clk_hw*) ;

__attribute__((used)) static int scmi_clk_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct scmi_clk *clk = to_scmi_clk(hw);

 return clk->handle->clk_ops->rate_set(clk->handle, clk->id, rate);
}
