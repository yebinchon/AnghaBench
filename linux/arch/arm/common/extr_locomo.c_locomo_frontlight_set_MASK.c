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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct locomo_dev {TYPE_1__ dev; } ;
struct locomo {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int LOCOMO_ALC_EN ; 
 scalar_t__ LOCOMO_ALD ; 
 scalar_t__ LOCOMO_ALS ; 
 scalar_t__ LOCOMO_FRONTLIGHT ; 
 int /*<<< orphan*/  LOCOMO_GPIO_FL_VR ; 
 struct locomo* FUNC0 (struct locomo_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct locomo_dev *dev, int duty, int vr, int bpwf)
{
	unsigned long flags;
	struct locomo *lchip = FUNC0(dev);

	if (vr)
		FUNC1(dev->dev.parent, LOCOMO_GPIO_FL_VR, 1);
	else
		FUNC1(dev->dev.parent, LOCOMO_GPIO_FL_VR, 0);

	FUNC3(&lchip->lock, flags);
	FUNC2(bpwf, lchip->base + LOCOMO_FRONTLIGHT + LOCOMO_ALS);
	FUNC5(100);
	FUNC2(duty, lchip->base + LOCOMO_FRONTLIGHT + LOCOMO_ALD);
	FUNC2(bpwf | LOCOMO_ALC_EN, lchip->base + LOCOMO_FRONTLIGHT + LOCOMO_ALS);
	FUNC4(&lchip->lock, flags);
}