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
typedef  int u64 ;
typedef  size_t u32 ;
typedef  int u16 ;
struct sprd_pll {size_t regs_num; int fflag; int k1; int k2; } ;

/* Variables and functions */
 int CLK_PLL_10M ; 
 int CLK_PLL_1M ; 
 int FUNC0 (int,size_t) ; 
 unsigned long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PLL_DIV_S ; 
 int /*<<< orphan*/  PLL_KINT ; 
 int /*<<< orphan*/  PLL_N ; 
 int /*<<< orphan*/  PLL_NINT ; 
 int /*<<< orphan*/  PLL_POSTDIV ; 
 int /*<<< orphan*/  PLL_PREDIV ; 
 int /*<<< orphan*/  PLL_SDM_EN ; 
 size_t FUNC1 (size_t) ; 
 size_t* FUNC2 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t*) ; 
 scalar_t__ FUNC4 (struct sprd_pll const*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sprd_pll const*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sprd_pll const*) ; 
 size_t FUNC7 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (struct sprd_pll const*,size_t) ; 

__attribute__((used)) static unsigned long FUNC10(const struct sprd_pll *pll,
					   unsigned long parent_rate)
{
	u32 *cfg;
	u32 i, mask, regs_num = pll->regs_num;
	unsigned long rate, nint, kint = 0;
	u64 refin;
	u16 k1, k2;

	cfg = FUNC2(regs_num, sizeof(*cfg), GFP_KERNEL);
	if (!cfg)
		return -ENOMEM;

	for (i = 0; i < regs_num; i++)
		cfg[i] = FUNC9(pll, i);

	refin = FUNC6(pll);

	if (FUNC4(pll, cfg, PLL_PREDIV))
		refin = refin * 2;

	if (FUNC8(pll, PLL_POSTDIV) &&
	    ((pll->fflag == 1 && FUNC4(pll, cfg, PLL_POSTDIV)) ||
	     (!pll->fflag && !FUNC4(pll, cfg, PLL_POSTDIV))))
		refin = refin / 2;

	if (!FUNC4(pll, cfg, PLL_DIV_S)) {
		rate = refin * FUNC5(pll, cfg, PLL_N) * CLK_PLL_10M;
	} else {
		nint = FUNC5(pll, cfg, PLL_NINT);
		if (FUNC4(pll, cfg, PLL_SDM_EN))
			kint = FUNC5(pll, cfg, PLL_KINT);

		mask = FUNC7(pll, PLL_KINT);

		k1 = pll->k1;
		k2 = pll->k2;
		rate = FUNC0(refin * kint * k1,
					 ((mask >> FUNC1(mask)) + 1)) *
					 k2 + refin * nint * CLK_PLL_1M;
	}

	FUNC3(cfg);
	return rate;
}