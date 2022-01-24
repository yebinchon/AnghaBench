#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct scr24x_dev {scalar_t__ devno; TYPE_2__ c_dev; int /*<<< orphan*/  regs; int /*<<< orphan*/ * dev; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; } ;
struct pcmcia_device {int config_flags; int /*<<< orphan*/  dev; TYPE_1__** resource; struct scr24x_dev* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 size_t PCMCIA_IOPORT_0 ; 
 scalar_t__ SCR24X_DEVS ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct scr24x_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct scr24x_dev* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct pcmcia_device*) ; 
 int FUNC14 (struct pcmcia_device*) ; 
 int FUNC15 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  scr24x_class ; 
 int /*<<< orphan*/  scr24x_config_check ; 
 int /*<<< orphan*/  scr24x_devt ; 
 int /*<<< orphan*/  scr24x_fops ; 
 int /*<<< orphan*/  scr24x_minors ; 

__attribute__((used)) static int FUNC17(struct pcmcia_device *link)
{
	struct scr24x_dev *dev;
	int ret;

	dev = FUNC11(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->devno = FUNC8(scr24x_minors, SCR24X_DEVS);
	if (dev->devno >= SCR24X_DEVS) {
		ret = -EBUSY;
		goto err;
	}

	FUNC12(&dev->lock);
	FUNC10(&dev->refcnt);

	link->priv = dev;
	link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

	ret = FUNC15(link, scr24x_config_check, NULL);
	if (ret < 0)
		goto err;

	dev->dev = &link->dev;
	dev->regs = FUNC7(&link->dev,
				link->resource[PCMCIA_IOPORT_0]->start,
				FUNC16(link->resource[PCMCIA_IOPORT_0]));
	if (!dev->regs) {
		ret = -EIO;
		goto err;
	}

	FUNC3(&dev->c_dev, &scr24x_fops);
	dev->c_dev.owner = THIS_MODULE;
	dev->c_dev.ops = &scr24x_fops;
	ret = FUNC2(&dev->c_dev, FUNC1(FUNC0(scr24x_devt), dev->devno), 1);
	if (ret < 0)
		goto err;

	ret = FUNC14(link);
	if (ret < 0) {
		FUNC13(link);
		goto err;
	}

	FUNC6(scr24x_class, NULL, FUNC1(FUNC0(scr24x_devt), dev->devno),
		      NULL, "scr24x%d", dev->devno);

	FUNC5(&link->dev, "SCR24x Chip Card Interface\n");
	return 0;

err:
	if (dev->devno < SCR24X_DEVS)
		FUNC4(dev->devno, scr24x_minors);
	FUNC9 (dev);
	return ret;
}