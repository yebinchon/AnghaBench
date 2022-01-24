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
typedef  int u32 ;
struct arasan_cf_dev {scalar_t__ vbase; } ;

/* Variables and functions */
 scalar_t__ IRQ_EN ; 
 scalar_t__ IRQ_STS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC2(struct arasan_cf_dev *acdev, u32 mask, bool enable)
{
	u32 val = FUNC0(acdev->vbase + IRQ_EN);
	/* clear & enable/disable irqs */
	if (enable) {
		FUNC1(mask, acdev->vbase + IRQ_STS);
		FUNC1(val | mask, acdev->vbase + IRQ_EN);
	} else
		FUNC1(val & ~mask, acdev->vbase + IRQ_EN);
}