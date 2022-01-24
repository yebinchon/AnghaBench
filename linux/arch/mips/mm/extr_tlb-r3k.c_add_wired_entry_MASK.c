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

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long,...) ; 
 scalar_t__ r3k_have_wired_reg ; 
 unsigned long FUNC5 () ; 
 unsigned long FUNC6 () ; 
 unsigned long FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 

void FUNC14(unsigned long entrylo0, unsigned long entrylo1,
		     unsigned long entryhi, unsigned long pagemask)
{
	unsigned long asid_mask = FUNC0(&current_cpu_data);
	unsigned long flags;
	unsigned long old_ctx;
	static unsigned long wired = 0;

	if (r3k_have_wired_reg) {			/* TX39XX */
		unsigned long old_pagemask;
		unsigned long w;

#ifdef DEBUG_TLB
		printk("[tlbwired<entry lo0 %8x, hi %8x\n, pagemask %8x>]\n",
		       entrylo0, entryhi, pagemask);
#endif

		FUNC3(flags);
		/* Save old context and create impossible VPN2 value */
		old_ctx = FUNC5() & asid_mask;
		old_pagemask = FUNC6();
		w = FUNC7();
		FUNC13(w + 1);
		FUNC11(w << 8);
		FUNC12(pagemask);
		FUNC9(entryhi);
		FUNC10(entrylo0);
		BARRIER;
		FUNC8();

		FUNC9(old_ctx);
		FUNC12(old_pagemask);
		FUNC1();
		FUNC2(flags);

	} else if (wired < 8) {
#ifdef DEBUG_TLB
		printk("[tlbwired<entry lo0 %8x, hi %8x\n>]\n",
		       entrylo0, entryhi);
#endif

		FUNC3(flags);
		old_ctx = FUNC5() & asid_mask;
		FUNC10(entrylo0);
		FUNC9(entryhi);
		FUNC11(wired);
		wired++;				/* BARRIER */
		FUNC8();
		FUNC9(old_ctx);
		FUNC1();
		FUNC2(flags);
	}
}