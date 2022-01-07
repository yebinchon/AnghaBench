
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scpi_clk {int id; TYPE_1__* scpi_ops; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long (* clk_get_val ) (int ) ;} ;


 unsigned long stub1 (int ) ;
 struct scpi_clk* to_scpi_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long scpi_clk_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct scpi_clk *clk = to_scpi_clk(hw);

 return clk->scpi_ops->clk_get_val(clk->id);
}
