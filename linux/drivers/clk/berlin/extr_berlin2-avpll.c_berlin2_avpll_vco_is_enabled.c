
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct berlin2_avpll_vco {int flags; scalar_t__ base; } ;


 int BERLIN2_AVPLL_BIT_QUIRK ;
 scalar_t__ VCO_CTRL0 ;
 int VCO_POWERUP ;
 int readl_relaxed (scalar_t__) ;
 struct berlin2_avpll_vco* to_avpll_vco (struct clk_hw*) ;

__attribute__((used)) static int berlin2_avpll_vco_is_enabled(struct clk_hw *hw)
{
 struct berlin2_avpll_vco *vco = to_avpll_vco(hw);
 u32 reg;

 reg = readl_relaxed(vco->base + VCO_CTRL0);
 if (vco->flags & BERLIN2_AVPLL_BIT_QUIRK)
  reg >>= 4;

 return !!(reg & VCO_POWERUP);
}
