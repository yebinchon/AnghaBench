#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct drbd_thread {int t_state; int reset_cpu_mask; int /*<<< orphan*/  t_lock; int /*<<< orphan*/ * name; struct task_struct* task; TYPE_1__* connection; struct drbd_resource* resource; int /*<<< orphan*/  stop; } ;
struct drbd_resource {int /*<<< orphan*/  kref; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct TYPE_4__ {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
#define  EXITING 131 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
#define  NONE 130 
#define  RESTARTING 129 
#define  RUNNING 128 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  drbd_destroy_connection ; 
 int /*<<< orphan*/  drbd_destroy_resource ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_resource*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_resource*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drbd_thread_setup ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC7 (int /*<<< orphan*/ ,void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 

int FUNC13(struct drbd_thread *thi)
{
	struct drbd_resource *resource = thi->resource;
	struct task_struct *nt;
	unsigned long flags;

	/* is used from state engine doing drbd_thread_stop_nowait,
	 * while holding the req lock irqsave */
	FUNC9(&thi->t_lock, flags);

	switch (thi->t_state) {
	case NONE:
		FUNC2(resource, "Starting %s thread (from %s [%d])\n",
			 thi->name, current->comm, current->pid);

		/* Get ref on module for thread - this is released when thread exits */
		if (!FUNC11(THIS_MODULE)) {
			FUNC1(resource, "Failed to get module reference in drbd_thread_start\n");
			FUNC10(&thi->t_lock, flags);
			return false;
		}

		FUNC5(&resource->kref);
		if (thi->connection)
			FUNC5(&thi->connection->kref);

		FUNC4(&thi->stop);
		thi->reset_cpu_mask = 1;
		thi->t_state = RUNNING;
		FUNC10(&thi->t_lock, flags);
		FUNC3(current); /* otherw. may get -ERESTARTNOINTR */

		nt = FUNC7(drbd_thread_setup, (void *) thi,
				    "drbd_%c_%s", thi->name[0], thi->resource->name);

		if (FUNC0(nt)) {
			FUNC1(resource, "Couldn't start thread\n");

			if (thi->connection)
				FUNC6(&thi->connection->kref, drbd_destroy_connection);
			FUNC6(&resource->kref, drbd_destroy_resource);
			FUNC8(THIS_MODULE);
			return false;
		}
		FUNC9(&thi->t_lock, flags);
		thi->task = nt;
		thi->t_state = RUNNING;
		FUNC10(&thi->t_lock, flags);
		FUNC12(nt);
		break;
	case EXITING:
		thi->t_state = RESTARTING;
		FUNC2(resource, "Restarting %s thread (from %s [%d])\n",
				thi->name, current->comm, current->pid);
		/* fall through */
	case RUNNING:
	case RESTARTING:
	default:
		FUNC10(&thi->t_lock, flags);
		break;
	}

	return true;
}