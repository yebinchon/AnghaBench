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
struct TYPE_2__ {int /*<<< orphan*/  writes; int /*<<< orphan*/  worker; int /*<<< orphan*/  wq; } ;
struct drbd_device {TYPE_1__ submit; int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_submit ; 

__attribute__((used)) static int FUNC3(struct drbd_device *device)
{
	/* opencoded create_singlethread_workqueue(),
	 * to be able to say "drbd%d", ..., minor */
	device->submit.wq =
		FUNC2("drbd%u_submit", WQ_MEM_RECLAIM, device->minor);
	if (!device->submit.wq)
		return -ENOMEM;

	FUNC1(&device->submit.worker, do_submit);
	FUNC0(&device->submit.writes);
	return 0;
}