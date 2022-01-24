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
struct intel_uncore_extra_reg {int config; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;

/* Variables and functions */
 int EXTRA_REG_NHMEX_M_ZDP_CTL_FVC ; 
 int FUNC0 (int) ; 
 int NHMEX_M_PMON_ZDP_CTL_FVC_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int WSMEX_M_PMON_ZDP_CTL_FVC_MASK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ uncore_nhmex ; 

__attribute__((used)) static bool FUNC9(struct intel_uncore_box *box, int idx, u64 config)
{
	struct intel_uncore_extra_reg *er;
	unsigned long flags;
	bool ret = false;
	u64 mask;

	if (idx < EXTRA_REG_NHMEX_M_ZDP_CTL_FVC) {
		er = &box->shared_regs[idx];
		FUNC7(&er->lock, flags);
		if (!FUNC6(&er->ref) || er->config == config) {
			FUNC5(&er->ref);
			er->config = config;
			ret = true;
		}
		FUNC8(&er->lock, flags);

		return ret;
	}
	/*
	 * The ZDP_CTL_FVC MSR has 4 fields which are used to control
	 * events 0xd ~ 0x10. Besides these 4 fields, there are additional
	 * fields which are shared.
	 */
	idx -= EXTRA_REG_NHMEX_M_ZDP_CTL_FVC;
	if (FUNC1(idx >= 4))
		return false;

	/* mask of the shared fields */
	if (uncore_nhmex)
		mask = NHMEX_M_PMON_ZDP_CTL_FVC_MASK;
	else
		mask = WSMEX_M_PMON_ZDP_CTL_FVC_MASK;
	er = &box->shared_regs[EXTRA_REG_NHMEX_M_ZDP_CTL_FVC];

	FUNC7(&er->lock, flags);
	/* add mask of the non-shared field if it's in use */
	if (FUNC3(FUNC6(&er->ref), idx, 8)) {
		if (uncore_nhmex)
			mask |= FUNC0(idx);
		else
			mask |= FUNC2(idx);
	}

	if (!FUNC6(&er->ref) || !((er->config ^ config) & mask)) {
		FUNC4(1 << (idx * 8), &er->ref);
		if (uncore_nhmex)
			mask = NHMEX_M_PMON_ZDP_CTL_FVC_MASK |
				FUNC0(idx);
		else
			mask = WSMEX_M_PMON_ZDP_CTL_FVC_MASK |
				FUNC2(idx);
		er->config &= ~mask;
		er->config |= (config & mask);
		ret = true;
	}
	FUNC8(&er->lock, flags);

	return ret;
}