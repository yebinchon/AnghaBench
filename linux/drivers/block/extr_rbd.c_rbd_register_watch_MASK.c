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
struct rbd_device {scalar_t__ watch_state; int /*<<< orphan*/  watch_mutex; TYPE_1__* watch_handle; int /*<<< orphan*/  watch_cookie; } ;
struct TYPE_2__ {int /*<<< orphan*/  linger_id; } ;

/* Variables and functions */
 scalar_t__ RBD_WATCH_STATE_REGISTERED ; 
 scalar_t__ RBD_WATCH_STATE_UNREGISTERED ; 
 int FUNC0 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rbd_device *rbd_dev)
{
	int ret;

	FUNC1(&rbd_dev->watch_mutex);
	FUNC3(rbd_dev->watch_state == RBD_WATCH_STATE_UNREGISTERED);
	ret = FUNC0(rbd_dev);
	if (ret)
		goto out;

	rbd_dev->watch_state = RBD_WATCH_STATE_REGISTERED;
	rbd_dev->watch_cookie = rbd_dev->watch_handle->linger_id;

out:
	FUNC2(&rbd_dev->watch_mutex);
	return ret;
}