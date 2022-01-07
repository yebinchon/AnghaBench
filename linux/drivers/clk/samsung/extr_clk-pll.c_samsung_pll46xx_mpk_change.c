
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct samsung_pll_rate_table {int mdiv; int pdiv; int kdiv; } ;


 int PLL46XX_KDIV_MASK ;
 int PLL46XX_KDIV_SHIFT ;
 int PLL46XX_MDIV_MASK ;
 int PLL46XX_MDIV_SHIFT ;
 int PLL46XX_PDIV_MASK ;
 int PLL46XX_PDIV_SHIFT ;

__attribute__((used)) static bool samsung_pll46xx_mpk_change(u32 pll_con0, u32 pll_con1,
    const struct samsung_pll_rate_table *rate)
{
 u32 old_mdiv, old_pdiv, old_kdiv;

 old_mdiv = (pll_con0 >> PLL46XX_MDIV_SHIFT) & PLL46XX_MDIV_MASK;
 old_pdiv = (pll_con0 >> PLL46XX_PDIV_SHIFT) & PLL46XX_PDIV_MASK;
 old_kdiv = (pll_con1 >> PLL46XX_KDIV_SHIFT) & PLL46XX_KDIV_MASK;

 return (old_mdiv != rate->mdiv || old_pdiv != rate->pdiv
  || old_kdiv != rate->kdiv);
}
