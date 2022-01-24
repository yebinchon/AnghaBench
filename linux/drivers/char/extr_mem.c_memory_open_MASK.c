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
struct memdev {TYPE_1__* fops; int /*<<< orphan*/  fmode; } ;
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  f_mode; TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* open ) (struct inode*,struct file*) ;} ;

/* Variables and functions */
 int FUNC0 (struct memdev*) ; 
 int ENXIO ; 
 struct memdev* devlist ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	int minor;
	const struct memdev *dev;

	minor = FUNC1(inode);
	if (minor >= FUNC0(devlist))
		return -ENXIO;

	dev = &devlist[minor];
	if (!dev->fops)
		return -ENXIO;

	filp->f_op = dev->fops;
	filp->f_mode |= dev->fmode;

	if (dev->fops->open)
		return dev->fops->open(inode, filp);

	return 0;
}