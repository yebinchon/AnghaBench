#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  release; struct device_node* of_node; int /*<<< orphan*/  parent; int /*<<< orphan*/ * bus; } ;
struct sunxi_rsb_device {TYPE_1__ dev; int /*<<< orphan*/  rtaddr; int /*<<< orphan*/  hwaddr; struct sunxi_rsb* rsb; } ;
struct sunxi_rsb {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sunxi_rsb_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RSB_CTRL_NAME ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 struct sunxi_rsb_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  sunxi_rsb_bus ; 
 int /*<<< orphan*/  sunxi_rsb_dev_release ; 

__attribute__((used)) static struct sunxi_rsb_device *FUNC8(struct sunxi_rsb *rsb,
		struct device_node *node, u16 hwaddr, u8 rtaddr)
{
	int err;
	struct sunxi_rsb_device *rdev;

	rdev = FUNC6(sizeof(*rdev), GFP_KERNEL);
	if (!rdev)
		return FUNC0(-ENOMEM);

	rdev->rsb = rsb;
	rdev->hwaddr = hwaddr;
	rdev->rtaddr = rtaddr;
	rdev->dev.bus = &sunxi_rsb_bus;
	rdev->dev.parent = rsb->dev;
	rdev->dev.of_node = node;
	rdev->dev.release = sunxi_rsb_dev_release;

	FUNC4(&rdev->dev, "%s-%x", RSB_CTRL_NAME, hwaddr);

	err = FUNC5(&rdev->dev);
	if (err < 0) {
		FUNC2(&rdev->dev, "Can't add %s, status %d\n",
			FUNC3(&rdev->dev), err);
		goto err_device_add;
	}

	FUNC1(&rdev->dev, "device %s registered\n", FUNC3(&rdev->dev));

err_device_add:
	FUNC7(&rdev->dev);

	return FUNC0(err);
}