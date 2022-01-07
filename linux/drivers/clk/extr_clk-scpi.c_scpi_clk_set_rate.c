
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scpi_clk {int id; TYPE_1__* scpi_ops; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_set_val ) (int ,unsigned long) ;} ;


 int stub1 (int ,unsigned long) ;
 struct scpi_clk* to_scpi_clk (struct clk_hw*) ;

__attribute__((used)) static int scpi_clk_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct scpi_clk *clk = to_scpi_clk(hw);

 return clk->scpi_ops->clk_set_val(clk->id, rate);
}
