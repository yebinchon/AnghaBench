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
struct loop_device {int /*<<< orphan*/  lo_refcnt; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct loop_device* private_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loop_ctl_mutex ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct block_device *bdev, fmode_t mode)
{
	struct loop_device *lo;
	int err;

	err = FUNC1(&loop_ctl_mutex);
	if (err)
		return err;
	lo = bdev->bd_disk->private_data;
	if (!lo) {
		err = -ENXIO;
		goto out;
	}

	FUNC0(&lo->lo_refcnt);
out:
	FUNC2(&loop_ctl_mutex);
	return err;
}