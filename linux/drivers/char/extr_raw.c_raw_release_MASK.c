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
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/ * i_mapping; } ;
struct file {int f_mode; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ inuse; struct block_device* binding; } ;

/* Variables and functions */
 int FMODE_EXCL ; 
 int /*<<< orphan*/  FUNC0 (struct block_device*,int) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* raw_devices ; 
 int /*<<< orphan*/  raw_mutex ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	const int minor= FUNC1(inode);
	struct block_device *bdev;

	FUNC2(&raw_mutex);
	bdev = raw_devices[minor].binding;
	if (--raw_devices[minor].inuse == 0)
		/* Here  inode->i_mapping == bdev->bd_inode->i_mapping  */
		inode->i_mapping = &inode->i_data;
	FUNC3(&raw_mutex);

	FUNC0(bdev, filp->f_mode | FMODE_EXCL);
	return 0;
}