
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scpi_opp {unsigned long freq; } ;
struct scpi_clk {TYPE_2__* info; int id; TYPE_1__* scpi_ops; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {struct scpi_opp* opps; } ;
struct TYPE_3__ {int (* dvfs_get_idx ) (int ) ;} ;


 int stub1 (int ) ;
 struct scpi_clk* to_scpi_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long scpi_dvfs_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct scpi_clk *clk = to_scpi_clk(hw);
 int idx = clk->scpi_ops->dvfs_get_idx(clk->id);
 const struct scpi_opp *opp;

 if (idx < 0)
  return 0;

 opp = clk->info->opps + idx;
 return opp->freq;
}
