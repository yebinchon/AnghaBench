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
struct smi_info {int /*<<< orphan*/  si_lock; struct ipmi_smi_msg* waiting_msg; scalar_t__ run_to_completion; } ;
struct ipmi_smi_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipmi_smi_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct smi_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(void                *send_info,
		   struct ipmi_smi_msg *msg)
{
	struct smi_info   *smi_info = send_info;
	unsigned long     flags;

	FUNC2("Enqueue");

	if (smi_info->run_to_completion) {
		/*
		 * If we are running to completion, start it.  Upper
		 * layer will call flush_messages to clear it out.
		 */
		smi_info->waiting_msg = msg;
		return;
	}

	FUNC3(&smi_info->si_lock, flags);
	/*
	 * The following two lines don't need to be under the lock for
	 * the lock's sake, but they do need SMP memory barriers to
	 * avoid getting things out of order.  We are already claiming
	 * the lock, anyway, so just do it under the lock to avoid the
	 * ordering problem.
	 */
	FUNC0(smi_info->waiting_msg);
	smi_info->waiting_msg = msg;
	FUNC1(smi_info);
	FUNC4(&smi_info->si_lock, flags);
}