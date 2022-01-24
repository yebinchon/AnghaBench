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
struct pcmcia_device {struct cm4000_dev* priv; } ;
struct cm4000_dev {int dummy; } ;

/* Variables and functions */
 int CM4000_MAX_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  cmm_class ; 
 struct pcmcia_device** dev_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cm4000_dev*) ; 
 int /*<<< orphan*/  major ; 
 int /*<<< orphan*/  FUNC4 (struct cm4000_dev*) ; 

__attribute__((used)) static void FUNC5(struct pcmcia_device *link)
{
	struct cm4000_dev *dev = link->priv;
	int devno;

	/* find device */
	for (devno = 0; devno < CM4000_MAX_DEV; devno++)
		if (dev_table[devno] == link)
			break;
	if (devno == CM4000_MAX_DEV)
		return;

	FUNC4(dev);

	FUNC1(link);

	dev_table[devno] = NULL;
	FUNC3(dev);

	FUNC2(cmm_class, FUNC0(major, devno));

	return;
}