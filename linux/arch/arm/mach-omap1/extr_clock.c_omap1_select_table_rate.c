
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpu_rate {long rate; int flags; unsigned long xtal; int pll_rate; int ckctl_val; int dpllctl_val; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int rate; } ;
struct TYPE_3__ {unsigned long rate; } ;


 int EINVAL ;
 TYPE_2__* ck_dpll1_p ;
 TYPE_1__* ck_ref_p ;
 int cpu_mask ;
 struct mpu_rate* omap1_rate_table ;
 int omap_sram_reprogram_clock (int ,int ) ;

int omap1_select_table_rate(struct clk *clk, unsigned long rate)
{

 struct mpu_rate * ptr;
 unsigned long ref_rate;

 ref_rate = ck_ref_p->rate;

 for (ptr = omap1_rate_table; ptr->rate; ptr++) {
  if (!(ptr->flags & cpu_mask))
   continue;

  if (ptr->xtal != ref_rate)
   continue;


  if (ptr->rate <= rate)
   break;
 }

 if (!ptr->rate)
  return -EINVAL;





 omap_sram_reprogram_clock(ptr->dpllctl_val, ptr->ckctl_val);


 ck_dpll1_p->rate = ptr->pll_rate;

 return 0;
}
