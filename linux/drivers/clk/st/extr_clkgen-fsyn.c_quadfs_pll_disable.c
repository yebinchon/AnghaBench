
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_clk_quadfs_pll {scalar_t__ lock; TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ reset_present; int powerup_polarity; } ;


 int CLKGEN_WRITE (struct st_clk_quadfs_pll*,int ,int ) ;
 int npda ;
 int nreset ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct st_clk_quadfs_pll* to_quadfs_pll (struct clk_hw*) ;

__attribute__((used)) static void quadfs_pll_disable(struct clk_hw *hw)
{
 struct st_clk_quadfs_pll *pll = to_quadfs_pll(hw);
 unsigned long flags = 0;

 if (pll->lock)
  spin_lock_irqsave(pll->lock, flags);





 CLKGEN_WRITE(pll, npda, pll->data->powerup_polarity);

 if (pll->data->reset_present)
  CLKGEN_WRITE(pll, nreset, 0);

 if (pll->lock)
  spin_unlock_irqrestore(pll->lock, flags);
}
