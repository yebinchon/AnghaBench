
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_lpsc_clk {int md; int regmap; } ;
struct clk_hw {int dummy; } ;


 int MDSTAT (int ) ;
 int MDSTAT_MCKOUT ;
 int regmap_read (int ,int ,int*) ;
 struct davinci_lpsc_clk* to_davinci_lpsc_clk (struct clk_hw*) ;

__attribute__((used)) static int davinci_lpsc_clk_is_enabled(struct clk_hw *hw)
{
 struct davinci_lpsc_clk *lpsc = to_davinci_lpsc_clk(hw);
 u32 mdstat;

 regmap_read(lpsc->regmap, MDSTAT(lpsc->md), &mdstat);

 return (mdstat & MDSTAT_MCKOUT) ? 1 : 0;
}
