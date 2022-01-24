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
struct request_queue {int dummy; } ;
struct request {scalar_t__ rq_disk; scalar_t__ write_hint; scalar_t__ ioprio; int rq_flags; int cmd_flags; scalar_t__ start_time_ns; int /*<<< orphan*/ * bio; int /*<<< orphan*/  __data_len; TYPE_1__* biotail; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bi_next; } ;

/* Variables and functions */
#define  ELEVATOR_BACK_MERGE 129 
#define  ELEVATOR_DISCARD_MERGE 128 
 int REQ_FAILFAST_MASK ; 
 scalar_t__ REQ_OP_WRITE_SAME ; 
 int RQF_MIXED_MERGE ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int FUNC4 (struct request*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,struct request*,struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,struct request*,struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,struct request*,struct request*) ; 
 scalar_t__ FUNC9 (struct request*) ; 
 scalar_t__ FUNC10 (struct request*) ; 
 int /*<<< orphan*/  FUNC11 (struct request*) ; 

__attribute__((used)) static struct request *FUNC12(struct request_queue *q,
				     struct request *req, struct request *next)
{
	if (!FUNC11(req) || !FUNC11(next))
		return NULL;

	if (FUNC9(req) != FUNC9(next))
		return NULL;

	if (FUNC10(req) != FUNC10(next)
	    || req->rq_disk != next->rq_disk)
		return NULL;

	if (FUNC9(req) == REQ_OP_WRITE_SAME &&
	    !FUNC5(req->bio, next->bio))
		return NULL;

	/*
	 * Don't allow merge of different write hints, or for a hint with
	 * non-hint IO.
	 */
	if (req->write_hint != next->write_hint)
		return NULL;

	if (req->ioprio != next->ioprio)
		return NULL;

	/*
	 * If we are allowed to merge, then append bio list
	 * from next to rq and release next. merge_requests_fn
	 * will have updated segment counts, update sector
	 * counts here. Handle DISCARDs separately, as they
	 * have separate settings.
	 */

	switch (FUNC4(req, next)) {
	case ELEVATOR_DISCARD_MERGE:
		if (!FUNC8(q, req, next))
			return NULL;
		break;
	case ELEVATOR_BACK_MERGE:
		if (!FUNC7(q, req, next))
			return NULL;
		break;
	default:
		return NULL;
	}

	/*
	 * If failfast settings disagree or any of the two is already
	 * a mixed merge, mark both as mixed before proceeding.  This
	 * makes sure that all involved bios have mixable attributes
	 * set properly.
	 */
	if (((req->rq_flags | next->rq_flags) & RQF_MIXED_MERGE) ||
	    (req->cmd_flags & REQ_FAILFAST_MASK) !=
	    (next->cmd_flags & REQ_FAILFAST_MASK)) {
		FUNC3(req);
		FUNC3(next);
	}

	/*
	 * At this point we have either done a back merge or front merge. We
	 * need the smaller start_time_ns of the merged requests to be the
	 * current request for accounting purposes.
	 */
	if (next->start_time_ns < req->start_time_ns)
		req->start_time_ns = next->start_time_ns;

	req->biotail->bi_next = next->bio;
	req->biotail = next->biotail;

	req->__data_len += FUNC2(next);

	if (!FUNC1(req))
		FUNC6(q, req, next);

	/*
	 * 'next' is going away, so update stats accordingly
	 */
	FUNC0(next);

	/*
	 * ownership of bio passed from next to req, return 'next' for
	 * the caller to free
	 */
	next->bio = NULL;
	return next;
}