
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_pll14xx_rate_table {int mdiv; int pdiv; } ;


 int MDIV_MASK ;
 int MDIV_SHIFT ;
 int PDIV_MASK ;
 int PDIV_SHIFT ;

__attribute__((used)) static inline bool clk_pll1416x_mp_change(const struct imx_pll14xx_rate_table *rate,
       u32 pll_div)
{
 u32 old_mdiv, old_pdiv;

 old_mdiv = (pll_div >> MDIV_SHIFT) & MDIV_MASK;
 old_pdiv = (pll_div >> PDIV_SHIFT) & PDIV_MASK;

 return rate->mdiv != old_mdiv || rate->pdiv != old_pdiv;
}
