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
struct dma_info {TYPE_2__* pdev; } ;
struct device {int dummy; } ;
struct dma_channel {int chan; struct device dev; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_config ; 
 int /*<<< orphan*/  dev_attr_count ; 
 int /*<<< orphan*/  dev_attr_dev_id ; 
 int /*<<< orphan*/  dev_attr_flags ; 
 int /*<<< orphan*/  dev_attr_mode ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void FUNC4(struct dma_channel *chan, struct dma_info *info)
{
	struct device *dev = &chan->dev;
	char name[16];

	FUNC0(dev, &dev_attr_dev_id);
	FUNC0(dev, &dev_attr_count);
	FUNC0(dev, &dev_attr_mode);
	FUNC0(dev, &dev_attr_flags);
	FUNC0(dev, &dev_attr_config);

	FUNC2(name, sizeof(name), "dma%d", chan->chan);
	FUNC3(&info->pdev->dev.kobj, name);

	FUNC1(dev);
}