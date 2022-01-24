#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipmi_recv_msg {int /*<<< orphan*/  (* done ) (struct ipmi_recv_msg*) ;TYPE_1__* user; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  free_user ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_recv_msg*) ; 

void FUNC2(struct ipmi_recv_msg *msg)
{
	if (msg->user)
		FUNC0(&msg->user->refcount, free_user);
	msg->done(msg);
}