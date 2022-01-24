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
struct ipmi_smi_msg {int /*<<< orphan*/  link; } ;
struct ipmi_smi {int run_to_completion; int /*<<< orphan*/  recv_tasklet; int /*<<< orphan*/  xmit_msgs_lock; struct ipmi_smi_msg* curr_msg; int /*<<< orphan*/  waiting_rcv_msgs_lock; int /*<<< orphan*/  waiting_rcv_msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ipmi_smi *intf,
			   struct ipmi_smi_msg *msg)
{
	unsigned long flags = 0; /* keep us warning-free. */
	int run_to_completion = intf->run_to_completion;

	/*
	 * To preserve message order, we keep a queue and deliver from
	 * a tasklet.
	 */
	if (!run_to_completion)
		FUNC2(&intf->waiting_rcv_msgs_lock, flags);
	FUNC0(&msg->link, &intf->waiting_rcv_msgs);
	if (!run_to_completion)
		FUNC3(&intf->waiting_rcv_msgs_lock,
				       flags);

	if (!run_to_completion)
		FUNC2(&intf->xmit_msgs_lock, flags);
	/*
	 * We can get an asynchronous event or receive message in addition
	 * to commands we send.
	 */
	if (msg == intf->curr_msg)
		intf->curr_msg = NULL;
	if (!run_to_completion)
		FUNC3(&intf->xmit_msgs_lock, flags);

	if (run_to_completion)
		FUNC1((unsigned long) intf);
	else
		FUNC4(&intf->recv_tasklet);
}