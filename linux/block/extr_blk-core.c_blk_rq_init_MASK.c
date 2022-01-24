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
struct request_queue {int dummy; } ;
struct request {int tag; int internal_tag; int /*<<< orphan*/  ref; int /*<<< orphan*/ * part; int /*<<< orphan*/  start_time_ns; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  hash; scalar_t__ __sector; struct request_queue* q; int /*<<< orphan*/  queuelist; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(struct request_queue *q, struct request *rq)
{
	FUNC4(rq, 0, sizeof(*rq));

	FUNC1(&rq->queuelist);
	rq->q = q;
	rq->__sector = (sector_t) -1;
	FUNC0(&rq->hash);
	FUNC2(&rq->rb_node);
	rq->tag = -1;
	rq->internal_tag = -1;
	rq->start_time_ns = FUNC3();
	rq->part = NULL;
	FUNC5(&rq->ref, 1);
}