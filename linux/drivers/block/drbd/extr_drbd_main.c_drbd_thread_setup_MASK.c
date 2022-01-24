#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drbd_thread {int* name; int (* function ) (struct drbd_thread*) ;scalar_t__ t_state; TYPE_1__* connection; int /*<<< orphan*/  t_lock; int /*<<< orphan*/  stop; int /*<<< orphan*/ * task; struct drbd_resource* resource; } ;
struct drbd_resource {char* name; int /*<<< orphan*/  kref; } ;
struct TYPE_4__ {int* comm; } ;
struct TYPE_3__ {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRBD_SIGKILL ; 
 scalar_t__ NONE ; 
 scalar_t__ RESTARTING ; 
 scalar_t__ RUNNING ; 
 int /*<<< orphan*/  SIGXCPU ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  drbd_destroy_connection ; 
 int /*<<< orphan*/  drbd_destroy_resource ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_resource*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct drbd_thread*) ; 

__attribute__((used)) static int FUNC10(void *arg)
{
	struct drbd_thread *thi = (struct drbd_thread *) arg;
	struct drbd_resource *resource = thi->resource;
	unsigned long flags;
	int retval;

	FUNC6(current->comm, sizeof(current->comm), "drbd_%c_%s",
		 thi->name[0],
		 resource->name);

	FUNC0(DRBD_SIGKILL);
	FUNC0(SIGXCPU);
restart:
	retval = thi->function(thi);

	FUNC7(&thi->t_lock, flags);

	/* if the receiver has been "EXITING", the last thing it did
	 * was set the conn state to "StandAlone",
	 * if now a re-connect request comes in, conn state goes C_UNCONNECTED,
	 * and receiver thread will be "started".
	 * drbd_thread_start needs to set "RESTARTING" in that case.
	 * t_state check and assignment needs to be within the same spinlock,
	 * so either thread_start sees EXITING, and can remap to RESTARTING,
	 * or thread_start see NONE, and can proceed as normal.
	 */

	if (thi->t_state == RESTARTING) {
		FUNC2(resource, "Restarting %s thread\n", thi->name);
		thi->t_state = RUNNING;
		FUNC8(&thi->t_lock, flags);
		goto restart;
	}

	thi->task = NULL;
	thi->t_state = NONE;
	FUNC5();
	FUNC1(&thi->stop);
	FUNC8(&thi->t_lock, flags);

	FUNC2(resource, "Terminating %s\n", current->comm);

	/* Release mod reference taken when thread was started */

	if (thi->connection)
		FUNC3(&thi->connection->kref, drbd_destroy_connection);
	FUNC3(&resource->kref, drbd_destroy_resource);
	FUNC4(THIS_MODULE);
	return retval;
}