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
struct thread_info {int dummy; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
#define  THREAD_NOTIFY_EXIT 130 
#define  THREAD_NOTIFY_FLUSH 129 
#define  THREAD_NOTIFY_SWITCH 128 
 int /*<<< orphan*/  FUNC0 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread_info*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *self, unsigned long cmd, void *t)
{
	struct thread_info *thread = t;

	switch (cmd) {
	case THREAD_NOTIFY_FLUSH:
		/*
		 * flush_thread() zeroes thread->fpstate, so no need
		 * to do anything here.
		 *
		 * FALLTHROUGH: Ensure we don't try to overwrite our newly
		 * initialised state information on the first fault.
		 */

	case THREAD_NOTIFY_EXIT:
		FUNC0(thread);
		break;

	case THREAD_NOTIFY_SWITCH:
		FUNC1(thread);
		break;
	}

	return NOTIFY_DONE;
}