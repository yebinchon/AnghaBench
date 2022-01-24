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
struct reader_dev {int /*<<< orphan*/  poll_timer; } ;
struct pcmcia_device {int open; struct reader_dev* priv; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct reader_dev* private_data; } ;

/* Variables and functions */
 int CM_MAX_DEV ; 
 int /*<<< orphan*/  FUNC0 (int,struct reader_dev*,char*) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENODEV ; 
 int O_NONBLOCK ; 
 scalar_t__ POLL_PERIOD ; 
 int /*<<< orphan*/  cm4040_mutex ; 
 struct pcmcia_device** dev_table ; 
 int FUNC1 (struct inode*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct reader_dev *dev;
	struct pcmcia_device *link;
	int minor = FUNC1(inode);
	int ret;

	if (minor >= CM_MAX_DEV)
		return -ENODEV;

	FUNC3(&cm4040_mutex);
	link = dev_table[minor];
	if (link == NULL || !FUNC6(link)) {
		ret = -ENODEV;
		goto out;
	}

	if (link->open) {
		ret = -EBUSY;
		goto out;
	}

	dev = link->priv;
	filp->private_data = dev;

	if (filp->f_flags & O_NONBLOCK) {
		FUNC0(4, dev, "filep->f_flags O_NONBLOCK set\n");
		ret = -EAGAIN;
		goto out;
	}

	link->open = 1;

	FUNC2(&dev->poll_timer, jiffies + POLL_PERIOD);

	FUNC0(2, dev, "<- cm4040_open (successfully)\n");
	ret = FUNC5(inode, filp);
out:
	FUNC4(&cm4040_mutex);
	return ret;
}