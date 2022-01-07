
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scpi_opp {unsigned long freq; } ;
struct scpi_clk {TYPE_1__* info; } ;
struct TYPE_2__ {int count; struct scpi_opp* opps; } ;


 int EINVAL ;

__attribute__((used)) static int __scpi_find_dvfs_index(struct scpi_clk *clk, unsigned long rate)
{
 int idx, max_opp = clk->info->count;
 const struct scpi_opp *opp = clk->info->opps;

 for (idx = 0; idx < max_opp; idx++, opp++)
  if (opp->freq == rate)
   return idx;
 return -EINVAL;
}
