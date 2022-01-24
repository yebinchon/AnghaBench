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
struct inode {int dummy; } ;
struct file {int f_mode; struct block_device* private_data; int /*<<< orphan*/  f_mapping; int /*<<< orphan*/  f_flags; int /*<<< orphan*/ * f_op; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_5__ {int inuse; struct block_device* binding; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int ENODEV ; 
 int FMODE_EXCL ; 
 int /*<<< orphan*/  O_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int FUNC2 (struct block_device*,int,int (*) (struct inode*,struct file*)) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*,int) ; 
 TYPE_3__* FUNC4 (struct file*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw_ctl_fops ; 
 TYPE_2__* raw_devices ; 
 int /*<<< orphan*/  raw_mutex ; 
 int FUNC8 (struct block_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *filp)
{
	const int minor = FUNC5(inode);
	struct block_device *bdev;
	int err;

	if (minor == 0) {	/* It is the control device */
		filp->f_op = &raw_ctl_fops;
		return 0;
	}

	FUNC6(&raw_mutex);

	/*
	 * All we need to do on open is check that the device is bound.
	 */
	bdev = raw_devices[minor].binding;
	err = -ENODEV;
	if (!bdev)
		goto out;
	FUNC1(bdev);
	err = FUNC2(bdev, filp->f_mode | FMODE_EXCL, raw_open);
	if (err)
		goto out;
	err = FUNC8(bdev, FUNC0(bdev));
	if (err)
		goto out1;
	filp->f_flags |= O_DIRECT;
	filp->f_mapping = bdev->bd_inode->i_mapping;
	if (++raw_devices[minor].inuse == 1)
		FUNC4(filp)->i_mapping =
			bdev->bd_inode->i_mapping;
	filp->private_data = bdev;
	FUNC7(&raw_mutex);
	return 0;

out1:
	FUNC3(bdev, filp->f_mode | FMODE_EXCL);
out:
	FUNC7(&raw_mutex);
	return err;
}