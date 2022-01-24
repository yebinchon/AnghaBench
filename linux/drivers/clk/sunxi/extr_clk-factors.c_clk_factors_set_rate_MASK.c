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
typedef  int /*<<< orphan*/  u32 ;
struct factors_request {unsigned long rate; unsigned long parent_rate; int /*<<< orphan*/  p; int /*<<< orphan*/  m; int /*<<< orphan*/  k; int /*<<< orphan*/  n; } ;
struct clk_hw {int dummy; } ;
struct clk_factors_config {int /*<<< orphan*/  pwidth; int /*<<< orphan*/  pshift; int /*<<< orphan*/  mwidth; int /*<<< orphan*/  mshift; int /*<<< orphan*/  kwidth; int /*<<< orphan*/  kshift; int /*<<< orphan*/  nwidth; int /*<<< orphan*/  nshift; } ;
struct clk_factors {scalar_t__ lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  (* get_factors ) (struct factors_request*) ;struct clk_factors_config* config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct factors_request*) ; 
 struct clk_factors* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct factors_request req = {
		.rate = rate,
		.parent_rate = parent_rate,
	};
	u32 reg;
	struct clk_factors *factors = FUNC6(hw);
	const struct clk_factors_config *config = factors->config;
	unsigned long flags = 0;

	factors->get_factors(&req);

	if (factors->lock)
		FUNC3(factors->lock, flags);

	/* Fetch the register value */
	reg = FUNC2(factors->reg);

	/* Set up the new factors - macros do not do anything if width is 0 */
	reg = FUNC0(config->nshift, config->nwidth, reg, req.n);
	reg = FUNC0(config->kshift, config->kwidth, reg, req.k);
	reg = FUNC0(config->mshift, config->mwidth, reg, req.m);
	reg = FUNC0(config->pshift, config->pwidth, reg, req.p);

	/* Apply them now */
	FUNC7(reg, factors->reg);

	/* delay 500us so pll stabilizes */
	FUNC1((rate >> 20) * 500 / 2);

	if (factors->lock)
		FUNC4(factors->lock, flags);

	return 0;
}