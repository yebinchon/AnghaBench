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
struct request {int /*<<< orphan*/ * end_io_data; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  blk_end_sync_rq ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct gendisk*,struct request*,int,int /*<<< orphan*/ ) ; 
 unsigned long sysctl_hung_task_timeout_secs ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct request_queue *q, struct gendisk *bd_disk,
		   struct request *rq, int at_head)
{
	FUNC0(wait);
	unsigned long hang_check;

	rq->end_io_data = &wait;
	FUNC1(q, bd_disk, rq, at_head, blk_end_sync_rq);

	/* Prevent hang_check timer from firing at us during very long I/O */
	hang_check = sysctl_hung_task_timeout_secs;
	if (hang_check)
		while (!FUNC3(&wait, hang_check * (HZ/2)));
	else
		FUNC2(&wait);
}