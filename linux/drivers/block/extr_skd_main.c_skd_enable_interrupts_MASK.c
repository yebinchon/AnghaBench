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
typedef  scalar_t__ u32 ;
struct skd_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIT_CONTROL ; 
 scalar_t__ FIT_CR_ENABLE_INTERRUPTS ; 
 int /*<<< orphan*/  FIT_INT_MASK_HOST ; 
 scalar_t__ FIT_ISH_COMPLETION_POSTED ; 
 scalar_t__ FIT_ISH_FW_STATE_CHANGE ; 
 scalar_t__ FIT_ISH_MSG_FROM_DEV ; 
 scalar_t__ FUNC0 (struct skd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skd_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct skd_device *skdev)
{
	u32 val;

	/* unmask interrupts first */
	val = FIT_ISH_FW_STATE_CHANGE +
	      FIT_ISH_COMPLETION_POSTED + FIT_ISH_MSG_FROM_DEV;

	/* Note that the compliment of mask is written. A 1-bit means
	 * disable, a 0 means enable. */
	FUNC1(skdev, ~val, FIT_INT_MASK_HOST);
	FUNC2(&skdev->pdev->dev, "interrupt mask=0x%x\n", ~val);

	val = FUNC0(skdev, FIT_CONTROL);
	val |= FIT_CR_ENABLE_INTERRUPTS;
	FUNC2(&skdev->pdev->dev, "control=0x%x\n", val);
	FUNC1(skdev, val, FIT_CONTROL);
}