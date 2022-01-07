
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct clk_fepll_vco {int refclkdiv_shift; int fdbkdiv_shift; int fdbkdiv_width; int refclkdiv_width; int reg; } ;
struct TYPE_3__ {int regmap; } ;
struct TYPE_4__ {TYPE_1__ clkr; } ;
struct clk_fepll {TYPE_2__ cdiv; struct clk_fepll_vco* pll_vco; } ;


 int BIT (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static u64 clk_fepll_vco_calc_rate(struct clk_fepll *pll_div,
       unsigned long parent_rate)
{
 const struct clk_fepll_vco *pll_vco = pll_div->pll_vco;
 u32 fdbkdiv, refclkdiv, cdiv;
 u64 vco;

 regmap_read(pll_div->cdiv.clkr.regmap, pll_vco->reg, &cdiv);
 refclkdiv = (cdiv >> pll_vco->refclkdiv_shift) &
      (BIT(pll_vco->refclkdiv_width) - 1);
 fdbkdiv = (cdiv >> pll_vco->fdbkdiv_shift) &
    (BIT(pll_vco->fdbkdiv_width) - 1);

 vco = parent_rate / refclkdiv;
 vco *= 2;
 vco *= fdbkdiv;

 return vco;
}
