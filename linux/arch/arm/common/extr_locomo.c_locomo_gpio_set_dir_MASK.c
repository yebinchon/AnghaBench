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
 scalar_t__ LOCOMO_GPD ; 
 scalar_t__ LOCOMO_GPE ; 
 struct locomo* FUNC0 (struct device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct device *dev, unsigned int bits, unsigned int dir)
{
	struct locomo *lchip = FUNC0(dev);
	unsigned long flags;
	unsigned int r;

	if (!lchip)
		return;

	FUNC3(&lchip->lock, flags);

	r = FUNC1(lchip->base + LOCOMO_GPD);
	if (dir)
		r |= bits;
	else
		r &= ~bits;
	FUNC2(r, lchip->base + LOCOMO_GPD);

	r = FUNC1(lchip->base + LOCOMO_GPE);
	if (dir)
		r |= bits;
	else
		r &= ~bits;
	FUNC2(r, lchip->base + LOCOMO_GPE);

	FUNC4(&lchip->lock, flags);
}