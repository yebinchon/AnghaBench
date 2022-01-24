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
struct request_queue {struct request* last_merge; } ;
struct request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request_queue*,struct request*,struct request*) ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 
 scalar_t__ FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 struct request* FUNC4 (struct request_queue*,int /*<<< orphan*/ ) ; 

bool FUNC5(struct request_queue *q, struct request *rq)
{
	struct request *__rq;
	bool ret;

	if (FUNC1(q))
		return false;

	/*
	 * First try one-hit cache.
	 */
	if (q->last_merge && FUNC0(q, q->last_merge, rq))
		return true;

	if (FUNC2(q))
		return false;

	ret = false;
	/*
	 * See if our hash lookup can find a potential backmerge.
	 */
	while (1) {
		__rq = FUNC4(q, FUNC3(rq));
		if (!__rq || !FUNC0(q, __rq, rq))
			break;

		/* The merged request could be merged with others, try again */
		ret = true;
		rq = __rq;
	}

	return ret;
}