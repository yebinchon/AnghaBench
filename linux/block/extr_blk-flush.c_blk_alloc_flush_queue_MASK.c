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
struct request {int dummy; } ;
struct blk_flush_queue {int /*<<< orphan*/  flush_data_in_flight; int /*<<< orphan*/ * flush_queue; void* flush_rq; int /*<<< orphan*/  mq_flush_lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct blk_flush_queue*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct blk_flush_queue *FUNC6(struct request_queue *q,
		int node, int cmd_size, gfp_t flags)
{
	struct blk_flush_queue *fq;
	int rq_sz = sizeof(struct request);

	fq = FUNC3(sizeof(*fq), flags, node);
	if (!fq)
		goto fail;

	FUNC5(&fq->mq_flush_lock);

	rq_sz = FUNC4(rq_sz + cmd_size, FUNC1());
	fq->flush_rq = FUNC3(rq_sz, flags, node);
	if (!fq->flush_rq)
		goto fail_rq;

	FUNC0(&fq->flush_queue[0]);
	FUNC0(&fq->flush_queue[1]);
	FUNC0(&fq->flush_data_in_flight);

	return fq;

 fail_rq:
	FUNC2(fq);
 fail:
	return NULL;
}