
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scmi_clk {int id; TYPE_2__* handle; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* clk_ops; } ;
struct TYPE_3__ {int (* enable ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;
 struct scmi_clk* to_scmi_clk (struct clk_hw*) ;

__attribute__((used)) static int scmi_clk_enable(struct clk_hw *hw)
{
 struct scmi_clk *clk = to_scmi_clk(hw);

 return clk->handle->clk_ops->enable(clk->handle, clk->id);
}
