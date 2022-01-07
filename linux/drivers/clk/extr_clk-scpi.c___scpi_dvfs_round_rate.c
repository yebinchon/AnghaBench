
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scpi_opp {unsigned long freq; } ;
struct scpi_clk {TYPE_1__* info; } ;
struct TYPE_2__ {int count; struct scpi_opp* opps; } ;



__attribute__((used)) static long __scpi_dvfs_round_rate(struct scpi_clk *clk, unsigned long rate)
{
 int idx;
 unsigned long fmin = 0, fmax = ~0, ftmp;
 const struct scpi_opp *opp = clk->info->opps;

 for (idx = 0; idx < clk->info->count; idx++, opp++) {
  ftmp = opp->freq;
  if (ftmp >= rate) {
   if (ftmp <= fmax)
    fmax = ftmp;
   break;
  } else if (ftmp >= fmin) {
   fmin = ftmp;
  }
 }
 return fmax != ~0 ? fmax : fmin;
}
