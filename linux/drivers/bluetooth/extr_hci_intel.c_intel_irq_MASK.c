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
struct intel_device {TYPE_1__* pdev; int /*<<< orphan*/  hu_lock; scalar_t__ hu; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct intel_device *idev = dev_id;

	FUNC0(&idev->pdev->dev, "hci_intel irq\n");

	FUNC2(&idev->hu_lock);
	if (idev->hu)
		FUNC1(idev->hu);
	FUNC3(&idev->hu_lock);

	/* Host/Controller are now LPM resumed, trigger a new delayed suspend */
	FUNC4(&idev->pdev->dev);
	FUNC5(&idev->pdev->dev);
	FUNC6(&idev->pdev->dev);

	return IRQ_HANDLED;
}