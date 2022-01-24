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
struct rbd_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  open_count; int /*<<< orphan*/  flags; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct rbd_device* private_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  RBD_DEV_FLAG_REMOVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct block_device *bdev, fmode_t mode)
{
	struct rbd_device *rbd_dev = bdev->bd_disk->private_data;
	bool removing = false;

	FUNC1(&rbd_dev->lock);
	if (FUNC3(RBD_DEV_FLAG_REMOVING, &rbd_dev->flags))
		removing = true;
	else
		rbd_dev->open_count++;
	FUNC2(&rbd_dev->lock);
	if (removing)
		return -ENOENT;

	(void) FUNC0(&rbd_dev->dev);

	return 0;
}