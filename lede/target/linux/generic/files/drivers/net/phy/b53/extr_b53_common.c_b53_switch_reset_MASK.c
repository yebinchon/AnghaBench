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
typedef  int u8 ;
struct b53_device {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_CTRL_PAGE ; 
 int /*<<< orphan*/  B53_SOFTRESET ; 
 int /*<<< orphan*/  B53_SWITCH_MODE ; 
 int EINVAL ; 
 int SM_SW_FWD_EN ; 
 int SM_SW_FWD_MODE ; 
 int FUNC0 (struct b53_device*) ; 
 int FUNC1 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*) ; 
 int FUNC4 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct b53_device *dev)
{
	int ret = 0;
	u8 mgmt;

	FUNC6(dev);

	if (FUNC8(dev)) {
		FUNC7(dev, B53_CTRL_PAGE, B53_SOFTRESET, 0x83);
		FUNC7(dev, B53_CTRL_PAGE, B53_SOFTRESET, 0x00);
	}

	FUNC5(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

	if (!(mgmt & SM_SW_FWD_EN)) {
		mgmt &= ~SM_SW_FWD_MODE;
		mgmt |= SM_SW_FWD_EN;

		FUNC7(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, mgmt);
		FUNC5(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

		if (!(mgmt & SM_SW_FWD_EN)) {
			FUNC9("Failed to enable switch!\n");
			return -EINVAL;
		}
	}

	/* enable all ports */
	FUNC3(dev);

	if (dev->dev->of_node)
		ret = FUNC1(dev);
	else
		ret = FUNC0(dev);

	if (ret)
		return ret;

	FUNC2(dev);

	return FUNC4(dev);
}