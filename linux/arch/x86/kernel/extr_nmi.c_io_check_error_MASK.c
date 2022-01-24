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
 int /*<<< orphan*/  NMI_IO_CHECK ; 
 unsigned char NMI_REASON_CLEAR_IOCHK ; 
 unsigned char NMI_REASON_CLEAR_MASK ; 
 int /*<<< orphan*/  NMI_REASON_PORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ panic_on_io_nmi ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(unsigned char reason, struct pt_regs *regs)
{
	unsigned long i;

	/* check to see if anyone registered against these types of errors */
	if (FUNC0(NMI_IO_CHECK, regs))
		return;

	FUNC3(
	"NMI: IOCK error (debug interrupt?) for reason %02x on CPU %d.\n",
		 reason, FUNC5());
	FUNC4(regs);

	if (panic_on_io_nmi) {
		FUNC1(regs, "NMI IOCK error: Not continuing");

		/*
		 * If we end up here, it means we have received an NMI while
		 * processing panic(). Simply return without delaying and
		 * re-enabling NMIs.
		 */
		return;
	}

	/* Re-enable the IOCK line, wait for a few seconds */
	reason = (reason & NMI_REASON_CLEAR_MASK) | NMI_REASON_CLEAR_IOCHK;
	FUNC2(reason, NMI_REASON_PORT);

	i = 20000;
	while (--i) {
		FUNC6();
		FUNC7(100);
	}

	reason &= ~NMI_REASON_CLEAR_IOCHK;
	FUNC2(reason, NMI_REASON_PORT);
}