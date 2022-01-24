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
struct mce {int inject_flags; int extcpu; scalar_t__ finished; scalar_t__ status; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
#define  MCJ_CTX_IRQ 129 
#define  MCJ_CTX_PROCESS 128 
 int MCJ_EXCEPTION ; 
 int /*<<< orphan*/  injectm ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mce*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mce*) ; 
 struct mce* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct mce *m = FUNC5(&injectm);
	int context = FUNC0(m->inject_flags);
	int ret = 0;
	int cpu = m->extcpu;

	if (m->inject_flags & MCJ_EXCEPTION) {
		FUNC2("Triggering MCE exception on CPU %d\n", cpu);
		switch (context) {
		case MCJ_CTX_IRQ:
			/*
			 * Could do more to fake interrupts like
			 * calling irq_enter, but the necessary
			 * machinery isn't exported currently.
			 */
			/*FALL THROUGH*/
		case MCJ_CTX_PROCESS:
			FUNC3(m, NULL);
			break;
		default:
			FUNC2("Invalid MCE context\n");
			ret = -EINVAL;
		}
		FUNC2("MCE exception done on CPU %d\n", cpu);
	} else if (m->status) {
		FUNC2("Starting machine check poll CPU %d\n", cpu);
		FUNC4(m);
		FUNC1();
		FUNC2("Machine check poll done on CPU %d\n", cpu);
	} else
		m->finished = 0;

	return ret;
}