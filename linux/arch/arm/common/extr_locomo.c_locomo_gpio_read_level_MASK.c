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
struct locomo {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ LOCOMO_GPL ; 
 struct locomo* FUNC0 (struct device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct device *dev, unsigned int bits)
{
	struct locomo *lchip = FUNC0(dev);
	unsigned long flags;
	unsigned int ret;

	if (!lchip)
		return -ENODEV;

	FUNC2(&lchip->lock, flags);
	ret = FUNC1(lchip->base + LOCOMO_GPL);
	FUNC3(&lchip->lock, flags);

	ret &= bits;
	return ret;
}