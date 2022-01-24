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
struct timer_list {int dummy; } ;
struct throtl_service_queue {scalar_t__* nr_queued; struct throtl_service_queue* parent_sq; } ;
struct throtl_grp {int flags; } ;
struct throtl_data {int /*<<< orphan*/  dispatch_work; struct request_queue* queue; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 size_t READ ; 
 int THROTL_TG_WAS_EMPTY ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct throtl_service_queue* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kthrotld_workqueue ; 
 int /*<<< orphan*/  pending_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct throtl_service_queue* sq ; 
 struct throtl_data* FUNC5 (struct throtl_service_queue*) ; 
 struct throtl_grp* FUNC6 (struct throtl_service_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct throtl_grp*) ; 
 scalar_t__ FUNC8 (struct throtl_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct throtl_service_queue*,char*,int,...) ; 
 scalar_t__ FUNC10 (struct throtl_service_queue*,int) ; 
 int FUNC11 (struct throtl_service_queue*) ; 
 int /*<<< orphan*/  FUNC12 (struct throtl_data*) ; 

__attribute__((used)) static void FUNC13(struct timer_list *t)
{
	struct throtl_service_queue *sq = FUNC1(sq, t, pending_timer);
	struct throtl_grp *tg = FUNC6(sq);
	struct throtl_data *td = FUNC5(sq);
	struct request_queue *q = td->queue;
	struct throtl_service_queue *parent_sq;
	bool dispatched;
	int ret;

	FUNC3(&q->queue_lock);
	if (FUNC8(td, NULL))
		FUNC12(td);

again:
	parent_sq = sq->parent_sq;
	dispatched = false;

	while (true) {
		FUNC9(sq, "dispatch nr_queued=%u read=%u write=%u",
			   sq->nr_queued[READ] + sq->nr_queued[WRITE],
			   sq->nr_queued[READ], sq->nr_queued[WRITE]);

		ret = FUNC11(sq);
		if (ret) {
			FUNC9(sq, "bios disp=%u", ret);
			dispatched = true;
		}

		if (FUNC10(sq, false))
			break;

		/* this dispatch windows is still open, relax and repeat */
		FUNC4(&q->queue_lock);
		FUNC0();
		FUNC3(&q->queue_lock);
	}

	if (!dispatched)
		goto out_unlock;

	if (parent_sq) {
		/* @parent_sq is another throl_grp, propagate dispatch */
		if (tg->flags & THROTL_TG_WAS_EMPTY) {
			FUNC7(tg);
			if (!FUNC10(parent_sq, false)) {
				/* window is already open, repeat dispatching */
				sq = parent_sq;
				tg = FUNC6(sq);
				goto again;
			}
		}
	} else {
		/* reached the top-level, queue issueing */
		FUNC2(kthrotld_workqueue, &td->dispatch_work);
	}
out_unlock:
	FUNC4(&q->queue_lock);
}