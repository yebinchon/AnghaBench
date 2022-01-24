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
struct proc_event {int /*<<< orphan*/  cpu; } ;
struct cn_msg {scalar_t__ data; scalar_t__ seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN_IDX_PROC ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cn_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  proc_event_counts ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(struct cn_msg *msg)
{
	FUNC2();

	msg->seq = FUNC0(proc_event_counts) - 1;
	((struct proc_event *)msg->data)->cpu = FUNC4();

	/*
	 * Preemption remains disabled during send to ensure the messages are
	 * ordered according to their sequence numbers.
	 *
	 * If cn_netlink_send() fails, the data is not sent.
	 */
	FUNC1(msg, 0, CN_IDX_PROC, GFP_NOWAIT);

	FUNC3();
}