
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sam9x60_pll {int lock; int regmap; TYPE_1__* characteristics; int id; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ upll; } ;


 int PMC_PLL_ACR ;
 int PMC_PLL_ACR_UTMIBG ;
 int PMC_PLL_ACR_UTMIVR ;
 int PMC_PLL_CTRL0 ;
 int PMC_PLL_CTRL0_ENPLL ;
 int PMC_PLL_CTRL0_ENPLLCK ;
 int PMC_PLL_UPDT ;
 int PMC_PLL_UPDT_UPDATE ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct sam9x60_pll* to_sam9x60_pll (struct clk_hw*) ;

__attribute__((used)) static void sam9x60_pll_unprepare(struct clk_hw *hw)
{
 struct sam9x60_pll *pll = to_sam9x60_pll(hw);
 unsigned long flags;

 spin_lock_irqsave(pll->lock, flags);

 regmap_write(pll->regmap, PMC_PLL_UPDT, pll->id);

 regmap_update_bits(pll->regmap, PMC_PLL_CTRL0,
      PMC_PLL_CTRL0_ENPLLCK, 0);

 regmap_update_bits(pll->regmap, PMC_PLL_UPDT,
      PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);

 regmap_update_bits(pll->regmap, PMC_PLL_CTRL0, PMC_PLL_CTRL0_ENPLL, 0);

 if (pll->characteristics->upll)
  regmap_update_bits(pll->regmap, PMC_PLL_ACR,
       PMC_PLL_ACR_UTMIBG | PMC_PLL_ACR_UTMIVR, 0);

 regmap_update_bits(pll->regmap, PMC_PLL_UPDT,
      PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);

 spin_unlock_irqrestore(pll->lock, flags);
}
