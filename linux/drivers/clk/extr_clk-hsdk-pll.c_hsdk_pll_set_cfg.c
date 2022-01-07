
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hsdk_pll_clk {int dev; } ;
struct hsdk_pll_cfg {int idiv; int fbdiv; int odiv; int band; } ;


 int CGU_PLL_CTRL ;
 int CGU_PLL_CTRL_BAND_SHIFT ;
 int CGU_PLL_CTRL_FBDIV_SHIFT ;
 int CGU_PLL_CTRL_IDIV_SHIFT ;
 int CGU_PLL_CTRL_ODIV_SHIFT ;
 int dev_dbg (int ,char*,int) ;
 int hsdk_pll_write (struct hsdk_pll_clk*,int ,int) ;

__attribute__((used)) static inline void hsdk_pll_set_cfg(struct hsdk_pll_clk *clk,
        const struct hsdk_pll_cfg *cfg)
{
 u32 val = 0;


 val |= cfg->idiv << CGU_PLL_CTRL_IDIV_SHIFT;
 val |= cfg->fbdiv << CGU_PLL_CTRL_FBDIV_SHIFT;
 val |= cfg->odiv << CGU_PLL_CTRL_ODIV_SHIFT;
 val |= cfg->band << CGU_PLL_CTRL_BAND_SHIFT;

 dev_dbg(clk->dev, "write configuration: %#x\n", val);

 hsdk_pll_write(clk, CGU_PLL_CTRL, val);
}
