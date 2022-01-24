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
struct drbd_work_queue {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb; } ;
struct completion_work {int /*<<< orphan*/  done; TYPE_1__ w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_work_queue*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drbd_work_queue *work_queue)
{
	struct completion_work completion_work;

	completion_work.w.cb = w_complete;
	FUNC1(&completion_work.done);
	FUNC0(work_queue, &completion_work.w);
	FUNC2(&completion_work.done);
}