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
typedef  size_t u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct moxtet_device {size_t idx; TYPE_1__ dev; int /*<<< orphan*/  id; } ;
struct moxtet {int /*<<< orphan*/  dev; int /*<<< orphan*/ * modules; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct moxtet_device* FUNC0 (int) ; 
 size_t TURRIS_MOX_MAX_MODULES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct device_node*,...) ; 
 int FUNC2 (struct moxtet_device*) ; 
 struct moxtet_device* FUNC3 (struct moxtet*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int FUNC6 (struct device_node*,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static struct moxtet_device *
FUNC8(struct moxtet *moxtet, struct device_node *nc)
{
	struct moxtet_device *dev;
	u32 val;
	int ret;

	dev = FUNC3(moxtet);
	if (!dev) {
		FUNC1(moxtet->dev,
			"Moxtet device alloc error for %pOF\n", nc);
		return FUNC0(-ENOMEM);
	}

	ret = FUNC6(nc, "reg", &val);
	if (ret) {
		FUNC1(moxtet->dev, "%pOF has no valid 'reg' property (%d)\n",
			nc, ret);
		goto err_put;
	}

	dev->idx = val;

	if (dev->idx >= TURRIS_MOX_MAX_MODULES) {
		FUNC1(moxtet->dev, "%pOF Moxtet address 0x%x out of range\n",
			nc, dev->idx);
		ret = -EINVAL;
		goto err_put;
	}

	dev->id = moxtet->modules[dev->idx];

	if (!dev->id) {
		FUNC1(moxtet->dev, "%pOF Moxtet address 0x%x is empty\n", nc,
			dev->idx);
		ret = -ENODEV;
		goto err_put;
	}

	FUNC4(nc);
	dev->dev.of_node = nc;

	ret = FUNC2(dev);
	if (ret) {
		FUNC1(moxtet->dev,
			"Moxtet device register error for %pOF\n", nc);
		FUNC5(nc);
		goto err_put;
	}

	return dev;

err_put:
	FUNC7(&dev->dev);
	return FUNC0(ret);
}