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
struct rbd_img_request {int /*<<< orphan*/  lock_item; struct rbd_device* rbd_dev; } ;
struct rbd_device {scalar_t__ lock_state; int /*<<< orphan*/  lock_lists_lock; int /*<<< orphan*/  running_list; int /*<<< orphan*/  acquiring_list; int /*<<< orphan*/  lock_rwsem; } ;

/* Variables and functions */
 scalar_t__ RBD_LOCK_STATE_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct rbd_img_request *img_req)
{
	struct rbd_device *rbd_dev = img_req->rbd_dev;
	bool locked;

	FUNC2(&rbd_dev->lock_rwsem);
	locked = rbd_dev->lock_state == RBD_LOCK_STATE_LOCKED;
	FUNC4(&rbd_dev->lock_lists_lock);
	FUNC3(FUNC1(&img_req->lock_item));
	if (!locked)
		FUNC0(&img_req->lock_item, &rbd_dev->acquiring_list);
	else
		FUNC0(&img_req->lock_item, &rbd_dev->running_list);
	FUNC5(&rbd_dev->lock_lists_lock);
	return locked;
}