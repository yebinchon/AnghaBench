
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scpi_clk {int id; TYPE_1__* scpi_ops; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* dvfs_set_idx ) (int ,int ) ;} ;


 int __scpi_find_dvfs_index (struct scpi_clk*,unsigned long) ;
 int stub1 (int ,int ) ;
 struct scpi_clk* to_scpi_clk (struct clk_hw*) ;

__attribute__((used)) static int scpi_dvfs_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct scpi_clk *clk = to_scpi_clk(hw);
 int ret = __scpi_find_dvfs_index(clk, rate);

 if (ret < 0)
  return ret;
 return clk->scpi_ops->dvfs_set_idx(clk->id, (u8)ret);
}
