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
struct berlin2_pll_map {size_t fbdiv_shift; size_t rfdiv_shift; size_t divsel_shift; size_t* vcodiv; size_t mult; } ;
struct berlin2_pll {scalar_t__ base; struct berlin2_pll_map map; } ;

/* Variables and functions */
 size_t DIVSEL_MASK ; 
 size_t FBDIV_MASK ; 
 size_t RFDIV_MASK ; 
 scalar_t__ SPLL_CTRL0 ; 
 scalar_t__ SPLL_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 size_t FUNC3 (scalar_t__) ; 
 struct berlin2_pll* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC5(struct clk_hw *hw, unsigned long parent_rate)
{
	struct berlin2_pll *pll = FUNC4(hw);
	struct berlin2_pll_map *map = &pll->map;
	u32 val, fbdiv, rfdiv, vcodivsel, vcodiv;
	u64 rate = parent_rate;

	val = FUNC3(pll->base + SPLL_CTRL0);
	fbdiv = (val >> map->fbdiv_shift) & FBDIV_MASK;
	rfdiv = (val >> map->rfdiv_shift) & RFDIV_MASK;
	if (rfdiv == 0) {
		FUNC2("%s has zero rfdiv\n", FUNC0(hw));
		rfdiv = 1;
	}

	val = FUNC3(pll->base + SPLL_CTRL1);
	vcodivsel = (val >> map->divsel_shift) & DIVSEL_MASK;
	vcodiv = map->vcodiv[vcodivsel];
	if (vcodiv == 0) {
		FUNC2("%s has zero vcodiv (index %d)\n",
			FUNC0(hw), vcodivsel);
		vcodiv = 1;
	}

	rate *= fbdiv * map->mult;
	FUNC1(rate, rfdiv * vcodiv);

	return (unsigned long)rate;
}