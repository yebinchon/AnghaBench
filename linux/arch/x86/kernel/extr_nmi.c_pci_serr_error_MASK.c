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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned char NMI_REASON_CLEAR_MASK ; 
 unsigned char NMI_REASON_CLEAR_SERR ; 
 int /*<<< orphan*/  NMI_REASON_PORT ; 
 int /*<<< orphan*/  NMI_SERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ panic_on_unrecovered_nmi ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(unsigned char reason, struct pt_regs *regs)
{
	/* check to see if anyone registered against these types of errors */
	if (FUNC0(NMI_SERR, regs))
		return;

	FUNC3("NMI: PCI system error (SERR) for reason %02x on CPU %d.\n",
		 reason, FUNC4());

	if (panic_on_unrecovered_nmi)
		FUNC1(regs, "NMI: Not continuing");

	FUNC3("Dazed and confused, but trying to continue\n");

	/* Clear and disable the PCI SERR error line. */
	reason = (reason & NMI_REASON_CLEAR_MASK) | NMI_REASON_CLEAR_SERR;
	FUNC2(reason, NMI_REASON_PORT);
}