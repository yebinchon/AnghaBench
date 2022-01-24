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
struct TYPE_2__ {scalar_t__ sd; } ;
struct bsg_class_device {int /*<<< orphan*/ * class_dev; int /*<<< orphan*/  minor; } ;
struct request_queue {TYPE_1__ kobj; struct bsg_class_device bsg_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  bsg_minor_idr ; 
 int /*<<< orphan*/  bsg_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

void FUNC5(struct request_queue *q)
{
	struct bsg_class_device *bcd = &q->bsg_dev;

	if (!bcd->class_dev)
		return;

	FUNC2(&bsg_mutex);
	FUNC1(&bsg_minor_idr, bcd->minor);
	if (q->kobj.sd)
		FUNC4(&q->kobj, "bsg");
	FUNC0(bcd->class_dev);
	bcd->class_dev = NULL;
	FUNC3(&bsg_mutex);
}