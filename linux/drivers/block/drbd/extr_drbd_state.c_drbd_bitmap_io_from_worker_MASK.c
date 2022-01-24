#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drbd_device {int /*<<< orphan*/  suspend_cnt; } ;
typedef  enum bm_flag { ____Placeholder_bm_flag } bm_flag ;
struct TYPE_6__ {TYPE_2__* connection; } ;
struct TYPE_4__ {scalar_t__ task; } ;
struct TYPE_5__ {TYPE_1__ worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*) ; 
 TYPE_3__* FUNC5 (struct drbd_device*) ; 

int FUNC6(struct drbd_device *device,
		int (*io_fn)(struct drbd_device *),
		char *why, enum bm_flag flags)
{
	int rv;

	FUNC0(device, current == FUNC5(device)->connection->worker.task);

	/* open coded non-blocking drbd_suspend_io(device); */
	FUNC1(&device->suspend_cnt);

	FUNC2(device, why, flags);
	rv = io_fn(device);
	FUNC3(device);

	FUNC4(device);

	return rv;
}