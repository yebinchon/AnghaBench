
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_lpsc_clk {int md; int regmap; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (struct davinci_lpsc_clk*) ;
 int MDCTL (int ) ;
 int MDCTL_LRESET ;
 struct clk_hw* __clk_get_hw (struct clk*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 struct davinci_lpsc_clk* to_davinci_lpsc_clk (struct clk_hw*) ;

__attribute__((used)) static int davinci_lpsc_clk_reset(struct clk *clk, bool reset)
{
 struct clk_hw *hw = __clk_get_hw(clk);
 struct davinci_lpsc_clk *lpsc = to_davinci_lpsc_clk(hw);
 u32 mdctl;

 if (IS_ERR_OR_NULL(lpsc))
  return -EINVAL;

 mdctl = reset ? 0 : MDCTL_LRESET;
 regmap_write_bits(lpsc->regmap, MDCTL(lpsc->md), MDCTL_LRESET, mdctl);

 return 0;
}
