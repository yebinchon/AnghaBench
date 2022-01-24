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
struct reader_dev {int /*<<< orphan*/  poll_timer; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  devq; struct pcmcia_device* p_dev; scalar_t__ buffer_status; int /*<<< orphan*/  timeout; } ;
struct pcmcia_device {struct reader_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCID_DRIVER_MINIMUM_TIMEOUT ; 
 int CM_MAX_DEV ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cm4040_do_poll ; 
 int /*<<< orphan*/  cmx_class ; 
 struct pcmcia_device** dev_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct reader_dev*) ; 
 struct reader_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  major ; 
 int FUNC5 (struct pcmcia_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pcmcia_device *link)
{
	struct reader_dev *dev;
	int i, ret;

	for (i = 0; i < CM_MAX_DEV; i++) {
		if (dev_table[i] == NULL)
			break;
	}

	if (i == CM_MAX_DEV)
		return -ENODEV;

	dev = FUNC4(sizeof(struct reader_dev), GFP_KERNEL);
	if (dev == NULL)
		return -ENOMEM;

	dev->timeout = CCID_DRIVER_MINIMUM_TIMEOUT;
	dev->buffer_status = 0;

	link->priv = dev;
	dev->p_dev = link;

	dev_table[i] = link;

	FUNC2(&dev->devq);
	FUNC2(&dev->poll_wait);
	FUNC2(&dev->read_wait);
	FUNC2(&dev->write_wait);
	FUNC6(&dev->poll_timer, cm4040_do_poll, 0);

	ret = FUNC5(link, i);
	if (ret) {
		dev_table[i] = NULL;
		FUNC3(dev);
		return ret;
	}

	FUNC1(cmx_class, NULL, FUNC0(major, i), NULL, "cmx%d", i);

	return 0;
}