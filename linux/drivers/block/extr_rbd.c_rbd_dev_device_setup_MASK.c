#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int size; } ;
struct rbd_device {int major; int /*<<< orphan*/  header_rwsem; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  dev; TYPE_2__* opts; int /*<<< orphan*/  disk; TYPE_1__ mapping; scalar_t__ minor; } ;
struct TYPE_4__ {int /*<<< orphan*/  read_only; } ;

/* Variables and functions */
 int /*<<< orphan*/  RBD_DEV_FLAG_EXISTS ; 
 int SECTOR_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_device*) ; 
 int FUNC3 (struct rbd_device*) ; 
 int rbd_major ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  single_major ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct rbd_device *rbd_dev)
{
	int ret;

	/* Record our major and minor device numbers. */

	if (!single_major) {
		ret = FUNC4(0, rbd_dev->name);
		if (ret < 0)
			goto err_out_unlock;

		rbd_dev->major = ret;
		rbd_dev->minor = 0;
	} else {
		rbd_dev->major = rbd_major;
		rbd_dev->minor = FUNC1(rbd_dev->dev_id);
	}

	/* Set up the blkdev mapping. */

	ret = FUNC3(rbd_dev);
	if (ret)
		goto err_out_blkdev;

	FUNC6(rbd_dev->disk, rbd_dev->mapping.size / SECTOR_SIZE);
	FUNC7(rbd_dev->disk, rbd_dev->opts->read_only);

	ret = FUNC0(&rbd_dev->dev, "%d", rbd_dev->dev_id);
	if (ret)
		goto err_out_disk;

	FUNC5(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags);
	FUNC9(&rbd_dev->header_rwsem);
	return 0;

err_out_disk:
	FUNC2(rbd_dev);
err_out_blkdev:
	if (!single_major)
		FUNC8(rbd_dev->major, rbd_dev->name);
err_out_unlock:
	FUNC9(&rbd_dev->header_rwsem);
	return ret;
}