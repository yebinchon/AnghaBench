#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ runtime_status; scalar_t__ is_prepared; } ;
struct TYPE_4__ {TYPE_1__ power; } ;
struct pci_dev {scalar_t__ irq; scalar_t__ irq_managed; TYPE_2__ dev; int /*<<< orphan*/  pin; } ;
struct acpi_prt_entry {int index; scalar_t__ link; } ;

/* Variables and functions */
 scalar_t__ RPM_SUSPENDING ; 
 struct acpi_prt_entry* FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_prt_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct pci_dev *dev)
{
	struct acpi_prt_entry *entry;
	int gsi;
	u8 pin;

	pin = dev->pin;
	if (!pin || !dev->irq_managed || dev->irq <= 0)
		return;

	/* Keep IOAPIC pin configuration when suspending */
	if (dev->dev.power.is_prepared)
		return;
#ifdef	CONFIG_PM
	if (dev->dev.power.runtime_status == RPM_SUSPENDING)
		return;
#endif

	entry = FUNC0(dev, pin);
	if (!entry)
		return;

	if (entry->link)
		gsi = FUNC1(entry->link);
	else
		gsi = entry->index;

	FUNC4(entry);

	/*
	 * TBD: It might be worth clearing dev->irq by magic constant
	 * (e.g. PCI_UNDEFINED_IRQ).
	 */

	FUNC3(&dev->dev, "PCI INT %c disabled\n", FUNC5(pin));
	if (gsi >= 0) {
		FUNC2(gsi);
		dev->irq_managed = 0;
	}
}