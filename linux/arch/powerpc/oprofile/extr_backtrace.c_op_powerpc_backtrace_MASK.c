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
struct pt_regs {unsigned long* gpr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (unsigned long,int) ; 
 unsigned long FUNC5 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs* const) ; 

void FUNC7(struct pt_regs * const regs, unsigned int depth)
{
	unsigned long sp = regs->gpr[1];
	int first_frame = 1;

	/* We ditch the top stackframe so need to loop through an extra time */
	depth += 1;

	if (!FUNC6(regs)) {
		while (depth--) {
			sp = FUNC1(sp, first_frame);
			if (!sp)
				break;
			first_frame = 0;
		}
	} else {
		FUNC2();
#ifdef CONFIG_PPC64
		if (!is_32bit_task()) {
			while (depth--) {
				sp = user_getsp64(sp, first_frame);
				if (!sp)
					break;
				first_frame = 0;
			}
			pagefault_enable();
			return;
		}
#endif

		while (depth--) {
			sp = FUNC4(sp, first_frame);
			if (!sp)
				break;
			first_frame = 0;
		}
		FUNC3();
	}
}