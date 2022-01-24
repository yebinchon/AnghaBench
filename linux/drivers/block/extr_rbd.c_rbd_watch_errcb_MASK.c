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
typedef  int /*<<< orphan*/  u64 ;
struct rbd_device {scalar_t__ watch_state; int /*<<< orphan*/  watch_mutex; int /*<<< orphan*/  watch_dwork; int /*<<< orphan*/  task_wq; int /*<<< orphan*/  lock_rwsem; } ;

/* Variables and functions */
 scalar_t__ RBD_WATCH_STATE_ERROR ; 
 scalar_t__ RBD_WATCH_STATE_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rbd_empty_cid ; 
 int /*<<< orphan*/  FUNC5 (struct rbd_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rbd_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *arg, u64 cookie, int err)
{
	struct rbd_device *rbd_dev = arg;

	FUNC6(rbd_dev, "encountered watch error: %d", err);

	FUNC1(&rbd_dev->lock_rwsem);
	FUNC5(rbd_dev, &rbd_empty_cid);
	FUNC7(&rbd_dev->lock_rwsem);

	FUNC2(&rbd_dev->watch_mutex);
	if (rbd_dev->watch_state == RBD_WATCH_STATE_REGISTERED) {
		FUNC0(rbd_dev);
		rbd_dev->watch_state = RBD_WATCH_STATE_ERROR;

		FUNC4(rbd_dev->task_wq, &rbd_dev->watch_dwork, 0);
	}
	FUNC3(&rbd_dev->watch_mutex);
}