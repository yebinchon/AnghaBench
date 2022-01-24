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
typedef  int u32 ;
struct thread_info {unsigned int cpu; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPEXC ; 
 int FPEXC_EN ; 
 int NOTIFY_DONE ; 
#define  THREAD_NOTIFY_COPY 131 
#define  THREAD_NOTIFY_EXIT 130 
#define  THREAD_NOTIFY_FLUSH 129 
#define  THREAD_NOTIFY_SWITCH 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * vfp_current_hw_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread_info*) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *self, unsigned long cmd, void *v)
{
	struct thread_info *thread = v;
	u32 fpexc;
#ifdef CONFIG_SMP
	unsigned int cpu;
#endif

	switch (cmd) {
	case THREAD_NOTIFY_SWITCH:
		fpexc = FUNC0(FPEXC);

#ifdef CONFIG_SMP
		cpu = thread->cpu;

		/*
		 * On SMP, if VFP is enabled, save the old state in
		 * case the thread migrates to a different CPU. The
		 * restoring is done lazily.
		 */
		if ((fpexc & FPEXC_EN) && vfp_current_hw_state[cpu])
			vfp_save_state(vfp_current_hw_state[cpu], fpexc);
#endif

		/*
		 * Always disable VFP so we can lazily save/restore the
		 * old state.
		 */
		FUNC1(FPEXC, fpexc & ~FPEXC_EN);
		break;

	case THREAD_NOTIFY_FLUSH:
		FUNC5(thread);
		break;

	case THREAD_NOTIFY_EXIT:
		FUNC4(thread);
		break;

	case THREAD_NOTIFY_COPY:
		FUNC3(thread);
		break;
	}

	return NOTIFY_DONE;
}