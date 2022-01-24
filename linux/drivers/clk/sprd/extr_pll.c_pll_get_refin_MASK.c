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
typedef  int u32 ;
struct sprd_pll {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_REFIN ; 
 int FUNC0 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sprd_pll const*,int) ; 

__attribute__((used)) static unsigned long FUNC5(const struct sprd_pll *pll)
{
	u32 shift, mask, index, refin_id = 3;
	const unsigned long refin[4] = { 2, 4, 13, 26 };

	if (FUNC3(pll, PLL_REFIN)) {
		index = FUNC0(pll, PLL_REFIN);
		shift = FUNC2(pll, PLL_REFIN);
		mask = FUNC1(pll, PLL_REFIN);
		refin_id = (FUNC4(pll, index) & mask) >> shift;
		if (refin_id > 3)
			refin_id = 3;
	}

	return refin[refin_id];
}