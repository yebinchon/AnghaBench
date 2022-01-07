
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpu_rate {long rate; int flags; unsigned long xtal; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {unsigned long rate; } ;


 long EINVAL ;
 TYPE_1__* ck_ref_p ;
 int cpu_mask ;
 struct mpu_rate* omap1_rate_table ;

long omap1_round_to_table_rate(struct clk *clk, unsigned long rate)
{

 struct mpu_rate * ptr;
 long highest_rate;
 unsigned long ref_rate;

 ref_rate = ck_ref_p->rate;

 highest_rate = -EINVAL;

 for (ptr = omap1_rate_table; ptr->rate; ptr++) {
  if (!(ptr->flags & cpu_mask))
   continue;

  if (ptr->xtal != ref_rate)
   continue;

  highest_rate = ptr->rate;


  if (ptr->rate <= rate)
   break;
 }

 return highest_rate;
}
