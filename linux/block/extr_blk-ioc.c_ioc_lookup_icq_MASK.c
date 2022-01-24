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
struct request_queue {int /*<<< orphan*/  id; int /*<<< orphan*/  queue_lock; } ;
struct io_cq {struct request_queue* q; } ;
struct io_context {int /*<<< orphan*/  icq_hint; int /*<<< orphan*/  icq_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct io_cq* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct io_cq*) ; 
 struct io_cq* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

struct io_cq *FUNC6(struct io_context *ioc, struct request_queue *q)
{
	struct io_cq *icq;

	FUNC0(&q->queue_lock);

	/*
	 * icq's are indexed from @ioc using radix tree and hint pointer,
	 * both of which are protected with RCU.  All removals are done
	 * holding both q and ioc locks, and we're holding q lock - if we
	 * find a icq which points to us, it's guaranteed to be valid.
	 */
	FUNC4();
	icq = FUNC3(ioc->icq_hint);
	if (icq && icq->q == q)
		goto out;

	icq = FUNC1(&ioc->icq_tree, q->id);
	if (icq && icq->q == q)
		FUNC2(ioc->icq_hint, icq);	/* allowed to race */
	else
		icq = NULL;
out:
	FUNC5();
	return icq;
}