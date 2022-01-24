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
struct request_queue {struct elevator_queue* elevator; } ;
struct request {int /*<<< orphan*/  rq_flags; int /*<<< orphan*/  hash; } ;
struct elevator_queue {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  RQF_HASHED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 

void FUNC4(struct request_queue *q, struct request *rq)
{
	struct elevator_queue *e = q->elevator;

	FUNC0(FUNC1(rq));
	FUNC2(e->hash, &rq->hash, FUNC3(rq));
	rq->rq_flags |= RQF_HASHED;
}