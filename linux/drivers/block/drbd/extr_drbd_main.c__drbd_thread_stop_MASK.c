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
struct drbd_thread {scalar_t__ t_state; int /*<<< orphan*/  stop; int /*<<< orphan*/  t_lock; int /*<<< orphan*/ * task; } ;
typedef  enum drbd_thread_state { ____Placeholder_drbd_thread_state } drbd_thread_state ;

/* Variables and functions */
 int /*<<< orphan*/  DRBD_SIGKILL ; 
 int EXITING ; 
 scalar_t__ NONE ; 
 int RESTARTING ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_thread*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct drbd_thread *thi, int restart, int wait)
{
	unsigned long flags;

	enum drbd_thread_state ns = restart ? RESTARTING : EXITING;

	/* may be called from state engine, holding the req lock irqsave */
	FUNC4(&thi->t_lock, flags);

	if (thi->t_state == NONE) {
		FUNC5(&thi->t_lock, flags);
		if (restart)
			FUNC0(thi);
		return;
	}

	if (thi->t_state != ns) {
		if (thi->task == NULL) {
			FUNC5(&thi->t_lock, flags);
			return;
		}

		thi->t_state = ns;
		FUNC3();
		FUNC1(&thi->stop);
		if (thi->task != current)
			FUNC2(DRBD_SIGKILL, thi->task, 1);
	}

	FUNC5(&thi->t_lock, flags);

	if (wait)
		FUNC6(&thi->stop);
}