#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_10__ {int features; int /*<<< orphan*/  lock; scalar_t__ reg; scalar_t__ base; } ;
struct TYPE_9__ {int width; int shift; scalar_t__ max; } ;
struct TYPE_8__ {int width; int shift; int offset; scalar_t__ max; } ;
struct TYPE_7__ {int width; int shift; int offset; scalar_t__ max; scalar_t__ min; } ;
struct TYPE_6__ {int width; int shift; int offset; scalar_t__ max; scalar_t__ min; } ;
struct ccu_nkmp {unsigned long fixed_post_div; int /*<<< orphan*/  lock; TYPE_5__ common; TYPE_4__ p; TYPE_3__ m; TYPE_2__ k; TYPE_1__ n; } ;
struct _ccu_nkmp {int min_n; int max_n; int min_k; int max_k; int min_m; int max_m; int min_p; int max_p; int n; int k; int m; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int CCU_FEATURE_FIXED_POSTDIV ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long,struct _ccu_nkmp*) ; 
 struct ccu_nkmp* FUNC3 (struct clk_hw*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, unsigned long rate,
			   unsigned long parent_rate)
{
	struct ccu_nkmp *nkmp = FUNC3(hw);
	u32 n_mask = 0, k_mask = 0, m_mask = 0, p_mask = 0;
	struct _ccu_nkmp _nkmp;
	unsigned long flags;
	u32 reg;

	if (nkmp->common.features & CCU_FEATURE_FIXED_POSTDIV)
		rate = rate * nkmp->fixed_post_div;

	_nkmp.min_n = nkmp->n.min ?: 1;
	_nkmp.max_n = nkmp->n.max ?: 1 << nkmp->n.width;
	_nkmp.min_k = nkmp->k.min ?: 1;
	_nkmp.max_k = nkmp->k.max ?: 1 << nkmp->k.width;
	_nkmp.min_m = 1;
	_nkmp.max_m = nkmp->m.max ?: 1 << nkmp->m.width;
	_nkmp.min_p = 1;
	_nkmp.max_p = nkmp->p.max ?: 1 << ((1 << nkmp->p.width) - 1);

	FUNC2(parent_rate, rate, &_nkmp);

	/*
	 * If width is 0, GENMASK() macro may not generate expected mask (0)
	 * as it falls under undefined behaviour by C standard due to shifts
	 * which are equal or greater than width of left operand. This can
	 * be easily avoided by explicitly checking if width is 0.
	 */
	if (nkmp->n.width)
		n_mask = FUNC0(nkmp->n.width + nkmp->n.shift - 1,
				 nkmp->n.shift);
	if (nkmp->k.width)
		k_mask = FUNC0(nkmp->k.width + nkmp->k.shift - 1,
				 nkmp->k.shift);
	if (nkmp->m.width)
		m_mask = FUNC0(nkmp->m.width + nkmp->m.shift - 1,
				 nkmp->m.shift);
	if (nkmp->p.width)
		p_mask = FUNC0(nkmp->p.width + nkmp->p.shift - 1,
				 nkmp->p.shift);

	FUNC6(nkmp->common.lock, flags);

	reg = FUNC5(nkmp->common.base + nkmp->common.reg);
	reg &= ~(n_mask | k_mask | m_mask | p_mask);

	reg |= ((_nkmp.n - nkmp->n.offset) << nkmp->n.shift) & n_mask;
	reg |= ((_nkmp.k - nkmp->k.offset) << nkmp->k.shift) & k_mask;
	reg |= ((_nkmp.m - nkmp->m.offset) << nkmp->m.shift) & m_mask;
	reg |= (FUNC4(_nkmp.p) << nkmp->p.shift) & p_mask;

	FUNC8(reg, nkmp->common.base + nkmp->common.reg);

	FUNC7(nkmp->common.lock, flags);

	FUNC1(&nkmp->common, nkmp->lock);

	return 0;
}