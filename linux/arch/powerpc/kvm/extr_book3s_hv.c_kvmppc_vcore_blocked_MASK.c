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
typedef  scalar_t__ u64 ;
struct kvmppc_vcore {scalar_t__ halt_poll_ns; TYPE_2__* runner; void* vcore_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_3__ {int /*<<< orphan*/  halt_poll_success_ns; int /*<<< orphan*/  halt_poll_fail_ns; int /*<<< orphan*/  halt_wait_ns; int /*<<< orphan*/  halt_successful_wait; int /*<<< orphan*/  halt_successful_poll; int /*<<< orphan*/  halt_attempted_poll; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 void* VCORE_INACTIVE ; 
 void* VCORE_POLLING ; 
 void* VCORE_SLEEPING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_vcore*) ; 
 scalar_t__ halt_poll_ns ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct kvmppc_vcore*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct kvmppc_vcore*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct kvmppc_vcore*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC16(struct kvmppc_vcore *vc)
{
	ktime_t cur, start_poll, start_wait;
	int do_sleep = 1;
	u64 block_ns;
	FUNC0(wait);

	/* Poll for pending exceptions and ceded state */
	cur = start_poll = FUNC5();
	if (vc->halt_poll_ns) {
		ktime_t stop = FUNC3(start_poll, vc->halt_poll_ns);
		++vc->runner->stat.halt_attempted_poll;

		vc->vcore_state = VCORE_POLLING;
		FUNC13(&vc->lock);

		do {
			if (FUNC7(vc)) {
				do_sleep = 0;
				break;
			}
			cur = FUNC5();
		} while (FUNC11() && FUNC4(cur, stop));

		FUNC12(&vc->lock);
		vc->vcore_state = VCORE_INACTIVE;

		if (!do_sleep) {
			++vc->runner->stat.halt_successful_poll;
			goto out;
		}
	}

	FUNC8(&vc->wq, &wait, TASK_INTERRUPTIBLE);

	if (FUNC7(vc)) {
		FUNC1(&vc->wq, &wait);
		do_sleep = 0;
		/* If we polled, count this as a successful poll */
		if (vc->halt_poll_ns)
			++vc->runner->stat.halt_successful_poll;
		goto out;
	}

	start_wait = FUNC5();

	vc->vcore_state = VCORE_SLEEPING;
	FUNC14(vc, 0);
	FUNC13(&vc->lock);
	FUNC9();
	FUNC1(&vc->wq, &wait);
	FUNC12(&vc->lock);
	vc->vcore_state = VCORE_INACTIVE;
	FUNC14(vc, 1);
	++vc->runner->stat.halt_successful_wait;

	cur = FUNC5();

out:
	block_ns = FUNC6(cur) - FUNC6(start_poll);

	/* Attribute wait time */
	if (do_sleep) {
		vc->runner->stat.halt_wait_ns +=
			FUNC6(cur) - FUNC6(start_wait);
		/* Attribute failed poll time */
		if (vc->halt_poll_ns)
			vc->runner->stat.halt_poll_fail_ns +=
				FUNC6(start_wait) -
				FUNC6(start_poll);
	} else {
		/* Attribute successful poll time */
		if (vc->halt_poll_ns)
			vc->runner->stat.halt_poll_success_ns +=
				FUNC6(cur) -
				FUNC6(start_poll);
	}

	/* Adjust poll time */
	if (halt_poll_ns) {
		if (block_ns <= vc->halt_poll_ns)
			;
		/* We slept and blocked for longer than the max halt time */
		else if (vc->halt_poll_ns && block_ns > halt_poll_ns)
			FUNC10(vc);
		/* We slept and our poll time is too small */
		else if (vc->halt_poll_ns < halt_poll_ns &&
				block_ns < halt_poll_ns)
			FUNC2(vc);
		if (vc->halt_poll_ns > halt_poll_ns)
			vc->halt_poll_ns = halt_poll_ns;
	} else
		vc->halt_poll_ns = 0;

	FUNC15(do_sleep, block_ns);
}