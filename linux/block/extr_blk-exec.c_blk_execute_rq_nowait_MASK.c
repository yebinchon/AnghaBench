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
struct request {int /*<<< orphan*/ * end_io; struct gendisk* rq_disk; } ;
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  rq_end_io_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int FUNC3 () ; 

void FUNC4(struct request_queue *q, struct gendisk *bd_disk,
			   struct request *rq, int at_head,
			   rq_end_io_fn *done)
{
	FUNC0(FUNC3());
	FUNC0(!FUNC2(rq));

	rq->rq_disk = bd_disk;
	rq->end_io = done;

	/*
	 * don't check dying flag for MQ because the request won't
	 * be reused after dying flag is set
	 */
	FUNC1(rq, at_head, true, false);
}