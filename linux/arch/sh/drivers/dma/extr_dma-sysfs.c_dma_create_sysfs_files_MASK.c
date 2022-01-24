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
struct dma_info {TYPE_1__* pdev; } ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/ * bus; int /*<<< orphan*/  id; } ;
struct dma_channel {int chan; int /*<<< orphan*/  vchan; struct device dev; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_config ; 
 int /*<<< orphan*/  dev_attr_count ; 
 int /*<<< orphan*/  dev_attr_dev_id ; 
 int /*<<< orphan*/  dev_attr_flags ; 
 int /*<<< orphan*/  dev_attr_mode ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  dma_subsys ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct dma_channel *chan, struct dma_info *info)
{
	struct device *dev = &chan->dev;
	char name[16];
	int ret;

	dev->id  = chan->vchan;
	dev->bus = &dma_subsys;

	ret = FUNC2(dev);
	if (ret)
		return ret;

	ret |= FUNC1(dev, &dev_attr_dev_id);
	ret |= FUNC1(dev, &dev_attr_count);
	ret |= FUNC1(dev, &dev_attr_mode);
	ret |= FUNC1(dev, &dev_attr_flags);
	ret |= FUNC1(dev, &dev_attr_config);

	if (FUNC5(ret)) {
		FUNC0(&info->pdev->dev, "Failed creating attrs\n");
		return ret;
	}

	FUNC3(name, sizeof(name), "dma%d", chan->chan);
	return FUNC4(&info->pdev->dev.kobj, &dev->kobj, name);
}