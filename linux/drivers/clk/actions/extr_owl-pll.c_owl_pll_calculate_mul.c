
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_pll_hw {int min_mul; int max_mul; int bfreq; } ;


 int DIV_ROUND_CLOSEST (unsigned long,int ) ;
 int mul_mask (struct owl_pll_hw*) ;

__attribute__((used)) static u32 owl_pll_calculate_mul(struct owl_pll_hw *pll_hw, unsigned long rate)
{
 u32 mul;

 mul = DIV_ROUND_CLOSEST(rate, pll_hw->bfreq);
 if (mul < pll_hw->min_mul)
  mul = pll_hw->min_mul;
 else if (mul > pll_hw->max_mul)
  mul = pll_hw->max_mul;

 return mul &= mul_mask(pll_hw);
}
