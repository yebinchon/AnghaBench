#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u64 ;
typedef  size_t u32 ;
struct clk_hw {int dummy; } ;
struct berlin2_avpll_vco {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ VCO_CTRL1 ; 
 size_t VCO_FBDIV_MASK ; 
 size_t VCO_FBDIV_SHIFT ; 
 size_t VCO_REFDIV_MASK ; 
 size_t VCO_REFDIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 size_t FUNC1 (scalar_t__) ; 
 struct berlin2_avpll_vco* FUNC2 (struct clk_hw*) ; 
 size_t* vco_refdiv ; 

__attribute__((used)) static unsigned long
FUNC3(struct clk_hw *hw, unsigned long parent_rate)
{
	struct berlin2_avpll_vco *vco = FUNC2(hw);
	u32 reg, refdiv, fbdiv;
	u64 freq = parent_rate;

	/* AVPLL VCO frequency: Fvco = (Fref / refdiv) * fbdiv */
	reg = FUNC1(vco->base + VCO_CTRL1);
	refdiv = (reg & VCO_REFDIV_MASK) >> VCO_REFDIV_SHIFT;
	refdiv = vco_refdiv[refdiv];
	fbdiv = (reg & VCO_FBDIV_MASK) >> VCO_FBDIV_SHIFT;
	freq *= fbdiv;
	FUNC0(freq, refdiv);

	return (unsigned long)freq;
}