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
struct skd_device {int /*<<< orphan*/  lock; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIT_INT_STATUS_HOST ; 
 int /*<<< orphan*/  FIT_ISH_MSG_FROM_DEV ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct skd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *skd_host_data)
{
	struct skd_device *skdev = skd_host_data;
	unsigned long flags;

	FUNC4(&skdev->lock, flags);
	FUNC2(&skdev->pdev->dev, "MSIX = 0x%x\n",
		FUNC0(skdev, FIT_INT_STATUS_HOST));
	FUNC1(skdev, FIT_ISH_MSG_FROM_DEV, FIT_INT_STATUS_HOST);
	FUNC3(skdev);
	FUNC5(&skdev->lock, flags);
	return IRQ_HANDLED;
}