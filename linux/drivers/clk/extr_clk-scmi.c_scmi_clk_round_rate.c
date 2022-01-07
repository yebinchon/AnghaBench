
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u64 ;
struct scmi_clk {TYPE_2__* info; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {unsigned long min_rate; unsigned long max_rate; int step_size; } ;
struct TYPE_4__ {TYPE_1__ range; scalar_t__ rate_discrete; } ;


 int do_div (unsigned long,int) ;
 struct scmi_clk* to_scmi_clk (struct clk_hw*) ;

__attribute__((used)) static long scmi_clk_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *parent_rate)
{
 u64 fmin, fmax, ftmp;
 struct scmi_clk *clk = to_scmi_clk(hw);







 if (clk->info->rate_discrete)
  return rate;

 fmin = clk->info->range.min_rate;
 fmax = clk->info->range.max_rate;
 if (rate <= fmin)
  return fmin;
 else if (rate >= fmax)
  return fmax;

 ftmp = rate - fmin;
 ftmp += clk->info->range.step_size - 1;
 do_div(ftmp, clk->info->range.step_size);

 return ftmp * clk->info->range.step_size + fmin;
}
