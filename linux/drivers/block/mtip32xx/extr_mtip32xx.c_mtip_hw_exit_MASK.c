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
struct driver_data {int /*<<< orphan*/ * port; TYPE_1__* pdev; scalar_t__ mmio; int /*<<< orphan*/  sr; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ HOST_CTL ; 
 int HOST_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct driver_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct driver_data*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct driver_data *dd)
{
	if (!dd->sr) {
		/* de-initialize the port. */
		FUNC4(dd->port);

		/* Disable interrupts on the HBA. */
		FUNC7(FUNC6(dd->mmio + HOST_CTL) & ~HOST_IRQ_EN,
				dd->mmio + HOST_CTL);
	}

	/* Release the IRQ. */
	FUNC1(dd->pdev->irq, NULL);
	FUNC0(dd->pdev->irq, dd);
	FUNC3(1000);

	/* Free dma regions */
	FUNC5(dd);

	/* Free the memory allocated for the for structure. */
	FUNC2(dd->port);
	dd->port = NULL;

	return 0;
}