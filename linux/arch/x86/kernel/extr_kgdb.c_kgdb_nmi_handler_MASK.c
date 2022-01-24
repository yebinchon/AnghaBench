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
 int NMI_DONE ; 
 int NMI_HANDLED ; 
#define  NMI_LOCAL 129 
#define  NMI_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kgdb_active ; 
 int /*<<< orphan*/  FUNC2 (int,struct pt_regs*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  was_in_debug_nmi ; 

__attribute__((used)) static int FUNC6(unsigned int cmd, struct pt_regs *regs)
{
	int cpu;

	switch (cmd) {
	case NMI_LOCAL:
		if (FUNC1(&kgdb_active) != -1) {
			/* KGDB CPU roundup */
			cpu = FUNC3();
			FUNC2(cpu, regs);
			FUNC4(cpu, was_in_debug_nmi);
			FUNC5();

			return NMI_HANDLED;
		}
		break;

	case NMI_UNKNOWN:
		cpu = FUNC3();

		if (FUNC0(cpu, was_in_debug_nmi))
			return NMI_HANDLED;

		break;
	default:
		/* do nothing */
		break;
	}
	return NMI_DONE;
}