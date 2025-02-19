
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PLL2550XX_M_MASK ;
 int PLL2550XX_M_SHIFT ;
 int PLL2550XX_P_MASK ;
 int PLL2550XX_P_SHIFT ;

__attribute__((used)) static inline bool samsung_pll2550xx_mp_change(u32 mdiv, u32 pdiv, u32 pll_con)
{
 u32 old_mdiv, old_pdiv;

 old_mdiv = (pll_con >> PLL2550XX_M_SHIFT) & PLL2550XX_M_MASK;
 old_pdiv = (pll_con >> PLL2550XX_P_SHIFT) & PLL2550XX_P_MASK;

 return mdiv != old_mdiv || pdiv != old_pdiv;
}
