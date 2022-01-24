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
struct task_struct {int dummy; } ;
struct drbd_connection {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  _try_outdate_peer_async ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  drbd_destroy_connection ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_connection*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC5 (int /*<<< orphan*/ ,struct drbd_connection*,char*) ; 

void FUNC6(struct drbd_connection *connection)
{
	struct task_struct *opa;

	FUNC3(&connection->kref);
	/* We may have just sent a signal to this thread
	 * to get it out of some blocking network function.
	 * Clear signals; otherwise kthread_run(), which internally uses
	 * wait_on_completion_killable(), will mistake our pending signal
	 * for a new fatal signal and fail. */
	FUNC2(current);
	opa = FUNC5(_try_outdate_peer_async, connection, "drbd_async_h");
	if (FUNC0(opa)) {
		FUNC1(connection, "out of mem, failed to invoke fence-peer helper\n");
		FUNC4(&connection->kref, drbd_destroy_connection);
	}
}