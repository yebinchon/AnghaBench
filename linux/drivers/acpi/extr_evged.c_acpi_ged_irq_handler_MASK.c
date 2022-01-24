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
struct acpi_ged_event {int /*<<< orphan*/  dev; int /*<<< orphan*/  gsi; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct acpi_ged_event *event = data;
	acpi_status acpi_ret;

	acpi_ret = FUNC1(event->handle, NULL, event->gsi);
	if (FUNC0(acpi_ret))
		FUNC2(event->dev, "IRQ method execution failed\n");

	return IRQ_HANDLED;
}