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
struct device {int /*<<< orphan*/  fwnode; scalar_t__ of_node; } ;
typedef  enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;

/* Variables and functions */
 int FUNC0 (struct device*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct device *dev)
{
	enum dev_dma_attr attr;
	int ret = 0;

	if (dev->of_node) {
		ret = FUNC3(dev, dev->of_node, true);
	} else if (FUNC2(dev)) {
		attr = FUNC1(FUNC4(dev->fwnode));
		ret = FUNC0(dev, attr);
	}

	return ret;
}