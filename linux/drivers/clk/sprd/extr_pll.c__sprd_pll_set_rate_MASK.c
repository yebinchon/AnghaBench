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
struct sprd_pll {size_t regs_num; int fflag; int fvco; int /*<<< orphan*/  udelay; int /*<<< orphan*/  itable; } ;
struct reg_cfg {size_t msk; size_t val; } ;

/* Variables and functions */
 int CLK_PLL_1M ; 
 unsigned long FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PLL_DIV_S ; 
 int /*<<< orphan*/  PLL_IBIAS ; 
 int /*<<< orphan*/  PLL_KINT ; 
 int /*<<< orphan*/  PLL_NINT ; 
 int /*<<< orphan*/  PLL_POSTDIV ; 
 int /*<<< orphan*/  PLL_PREDIV ; 
 int /*<<< orphan*/  PLL_SDM_EN ; 
 int FUNC1 (struct sprd_pll const*,size_t,int,size_t) ; 
 size_t FUNC2 (int,int) ; 
 struct reg_cfg* FUNC3 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct reg_cfg*) ; 
 size_t FUNC5 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sprd_pll const*) ; 
 size_t FUNC8 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (struct sprd_pll const*,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (struct sprd_pll const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sprd_pll const*,size_t,int,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(const struct sprd_pll *pll,
			      unsigned long rate,
			      unsigned long parent_rate)
{
	struct reg_cfg *cfg;
	int ret = 0;
	u32 mask, shift, width, ibias_val, index;
	u32 regs_num = pll->regs_num, i = 0;
	unsigned long kint, nint;
	u64 tmp, refin, fvco = rate;

	cfg = FUNC3(regs_num, sizeof(*cfg), GFP_KERNEL);
	if (!cfg)
		return -ENOMEM;

	refin = FUNC7(pll);

	mask = FUNC8(pll, PLL_PREDIV);
	index = FUNC5(pll, PLL_PREDIV);
	width = FUNC10(pll, PLL_PREDIV);
	if (width && (FUNC11(pll, index) & mask))
		refin = refin * 2;

	mask = FUNC8(pll, PLL_POSTDIV);
	index = FUNC5(pll, PLL_POSTDIV);
	width = FUNC10(pll, PLL_POSTDIV);
	cfg[index].msk = mask;
	if (width && ((pll->fflag == 1 && fvco <= pll->fvco) ||
		      (pll->fflag == 0 && fvco > pll->fvco)))
		cfg[index].val |= mask;

	if (width && fvco <= pll->fvco)
		fvco = fvco * 2;

	mask = FUNC8(pll, PLL_DIV_S);
	index = FUNC5(pll, PLL_DIV_S);
	cfg[index].val |= mask;
	cfg[index].msk |= mask;

	mask = FUNC8(pll, PLL_SDM_EN);
	index = FUNC5(pll, PLL_SDM_EN);
	cfg[index].val |= mask;
	cfg[index].msk |= mask;

	nint = FUNC2(fvco, refin * CLK_PLL_1M);
	mask = FUNC8(pll, PLL_NINT);
	index = FUNC5(pll, PLL_NINT);
	shift = FUNC9(pll, PLL_NINT);
	cfg[index].val |= (nint << shift) & mask;
	cfg[index].msk |= mask;

	mask = FUNC8(pll, PLL_KINT);
	index = FUNC5(pll, PLL_KINT);
	width = FUNC10(pll, PLL_KINT);
	shift = FUNC9(pll, PLL_KINT);
	tmp = fvco - refin * nint * CLK_PLL_1M;
	tmp = FUNC2(tmp, 10000) * ((mask >> shift) + 1);
	kint = FUNC0(tmp, refin * 100);
	cfg[index].val |= (kint << shift) & mask;
	cfg[index].msk |= mask;

	ibias_val = FUNC6(fvco, pll->itable);

	mask = FUNC8(pll, PLL_IBIAS);
	index = FUNC5(pll, PLL_IBIAS);
	shift = FUNC9(pll, PLL_IBIAS);
	cfg[index].val |= ibias_val << shift & mask;
	cfg[index].msk |= mask;

	for (i = 0; i < regs_num; i++) {
		if (cfg[i].msk) {
			FUNC12(pll, i, cfg[i].msk, cfg[i].val);
			ret |= FUNC1(pll, i, cfg[i].msk,
						   cfg[i].val);
		}
	}

	if (!ret)
		FUNC13(pll->udelay);

	FUNC4(cfg);
	return ret;
}