
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_clk_quadfs_pll {int ndiv; TYPE_1__* data; scalar_t__ lock; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ lockstatus_present; int powerup_polarity; scalar_t__ bwfilter_present; scalar_t__ reset_present; } ;


 int CLKGEN_READ (struct st_clk_quadfs_pll*,int ) ;
 int CLKGEN_WRITE (struct st_clk_quadfs_pll*,int ,int) ;
 int ETIMEDOUT ;
 int PLL_BW_GOODREF ;
 int cpu_relax () ;
 unsigned long jiffies ;
 int lock_status ;
 unsigned long msecs_to_jiffies (int) ;
 int ndiv ;
 int npda ;
 int nreset ;
 int ref_bw ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 struct st_clk_quadfs_pll* to_quadfs_pll (struct clk_hw*) ;

__attribute__((used)) static int quadfs_pll_enable(struct clk_hw *hw)
{
 struct st_clk_quadfs_pll *pll = to_quadfs_pll(hw);
 unsigned long flags = 0, timeout = jiffies + msecs_to_jiffies(10);

 if (pll->lock)
  spin_lock_irqsave(pll->lock, flags);




 if (pll->data->reset_present)
  CLKGEN_WRITE(pll, nreset, 1);




 if (pll->data->bwfilter_present)
  CLKGEN_WRITE(pll, ref_bw, PLL_BW_GOODREF);


 CLKGEN_WRITE(pll, ndiv, pll->ndiv);




 CLKGEN_WRITE(pll, npda, !pll->data->powerup_polarity);

 if (pll->lock)
  spin_unlock_irqrestore(pll->lock, flags);

 if (pll->data->lockstatus_present)
  while (!CLKGEN_READ(pll, lock_status)) {
   if (time_after(jiffies, timeout))
    return -ETIMEDOUT;
   cpu_relax();
  }

 return 0;
}
