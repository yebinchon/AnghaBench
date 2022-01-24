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
struct nl_msg {scalar_t__ nm_refcnt; struct nl_msg* nm_nlh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct nl_msg*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_msg*) ; 

void FUNC3(struct nl_msg *msg)
{
	if (!msg)
		return;

	msg->nm_refcnt--;
	FUNC1(4, "Returned message reference %p, %d remaining\n",
	       msg, msg->nm_refcnt);

	if (msg->nm_refcnt < 0)
		FUNC0();

	if (msg->nm_refcnt <= 0) {
		FUNC2(msg->nm_nlh);
		FUNC2(msg);
		FUNC1(2, "msg %p: Freed\n", msg);
	}
}