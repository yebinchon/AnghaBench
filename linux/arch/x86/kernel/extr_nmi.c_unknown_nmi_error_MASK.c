#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unknown; } ;

/* Variables and functions */
 int /*<<< orphan*/  NMI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,char*) ; 
 TYPE_1__ nmi_stats ; 
 scalar_t__ panic_on_unrecovered_nmi ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ unknown_nmi_panic ; 

__attribute__((used)) static void
FUNC5(unsigned char reason, struct pt_regs *regs)
{
	int handled;

	/*
	 * Use 'false' as back-to-back NMIs are dealt with one level up.
	 * Of course this makes having multiple 'unknown' handlers useless
	 * as only the first one is ever run (unless it can actually determine
	 * if it caused the NMI)
	 */
	handled = FUNC1(NMI_UNKNOWN, regs);
	if (handled) {
		FUNC0(nmi_stats.unknown, handled);
		return;
	}

	FUNC0(nmi_stats.unknown, 1);

	FUNC3("Uhhuh. NMI received for unknown reason %02x on CPU %d.\n",
		 reason, FUNC4());

	FUNC3("Do you have a strange power saving mode enabled?\n");
	if (unknown_nmi_panic || panic_on_unrecovered_nmi)
		FUNC2(regs, "NMI: Not continuing");

	FUNC3("Dazed and confused, but trying to continue\n");
}