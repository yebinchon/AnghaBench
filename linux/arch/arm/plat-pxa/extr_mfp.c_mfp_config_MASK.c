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
struct mfp_pin {unsigned long mfpr_run; unsigned long mfpr_lpm; unsigned long config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long) ; 
 int FUNC7 (unsigned long) ; 
 int MFP_PIN_MAX ; 
 int FUNC8 (unsigned long) ; 
 int MFP_PULL_NONE ; 
 int /*<<< orphan*/  FUNC9 (struct mfp_pin*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  mfp_spin_lock ; 
 struct mfp_pin* mfp_table ; 
 unsigned long* mfpr_edge ; 
 unsigned long* mfpr_lpm ; 
 unsigned long* mfpr_pull ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC14(unsigned long *mfp_cfgs, int num)
{
	unsigned long flags;
	int i;

	FUNC12(&mfp_spin_lock, flags);

	for (i = 0; i < num; i++, mfp_cfgs++) {
		unsigned long tmp, c = *mfp_cfgs;
		struct mfp_pin *p;
		int pin, af, drv, lpm, edge, pull;

		pin = FUNC7(c);
		FUNC0(pin >= MFP_PIN_MAX);
		p = &mfp_table[pin];

		af  = FUNC3(c);
		drv = FUNC4(c);
		lpm = FUNC6(c);
		edge = FUNC5(c);
		pull = FUNC8(c);

		/* run-mode pull settings will conflict with MFPR bits of
		 * low power mode state,  calculate mfpr_run and mfpr_lpm
		 * individually if pull != MFP_PULL_NONE
		 */
		tmp = FUNC1(af) | FUNC2(drv);

		if (FUNC10(pull == MFP_PULL_NONE)) {
			p->mfpr_run = tmp | mfpr_lpm[lpm] | mfpr_edge[edge];
			p->mfpr_lpm = p->mfpr_run;
		} else {
			p->mfpr_lpm = tmp | mfpr_lpm[lpm] | mfpr_edge[edge];
			p->mfpr_run = tmp | mfpr_pull[pull];
		}

		p->config = c; FUNC9(p);
	}

	FUNC11();
	FUNC13(&mfp_spin_lock, flags);
}