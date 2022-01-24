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
struct reader_dev {int /*<<< orphan*/  devq; } ;
struct pcmcia_device {scalar_t__ open; } ;
struct inode {int dummy; } ;
struct file {struct reader_dev* private_data; } ;

/* Variables and functions */
 int CM_MAX_DEV ; 
 int /*<<< orphan*/  FUNC0 (int,struct reader_dev*,char*,...) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct reader_dev*) ; 
 struct pcmcia_device** dev_table ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct reader_dev *dev = filp->private_data;
	struct pcmcia_device *link;
	int minor = FUNC3(inode);

	FUNC0(2, dev, "-> cm4040_close(maj/min=%d.%d)\n", FUNC2(inode),
	      FUNC3(inode));

	if (minor >= CM_MAX_DEV)
		return -ENODEV;

	link = dev_table[minor];
	if (link == NULL)
		return -ENODEV;

	FUNC1(dev);

	link->open = 0;
	FUNC4(&dev->devq);

	FUNC0(2, dev, "<- cm4040_close\n");
	return 0;
}