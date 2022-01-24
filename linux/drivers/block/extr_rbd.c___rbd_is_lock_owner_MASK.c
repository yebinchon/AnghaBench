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
struct rbd_device {scalar_t__ lock_state; int /*<<< orphan*/  lock_rwsem; } ;

/* Variables and functions */
 scalar_t__ RBD_LOCK_STATE_LOCKED ; 
 scalar_t__ RBD_LOCK_STATE_RELEASING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct rbd_device *rbd_dev)
{
	FUNC0(&rbd_dev->lock_rwsem);

	return rbd_dev->lock_state == RBD_LOCK_STATE_LOCKED ||
	       rbd_dev->lock_state == RBD_LOCK_STATE_RELEASING;
}