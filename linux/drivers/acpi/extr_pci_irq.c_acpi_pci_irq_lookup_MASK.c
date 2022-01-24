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
typedef  int u8 ;
struct pci_dev {int class; int pin; int /*<<< orphan*/  dev; TYPE_1__* bus; } ;
struct acpi_prt_entry {int dummy; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PCI_CLASS_BRIDGE_CARDBUS ; 
 int FUNC1 (struct pci_dev*,int,struct acpi_prt_entry**) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct acpi_prt_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static struct acpi_prt_entry *FUNC7(struct pci_dev *dev, int pin)
{
	struct acpi_prt_entry *entry = NULL;
	struct pci_dev *bridge;
	u8 bridge_pin, orig_pin = pin;
	int ret;

	ret = FUNC1(dev, pin, &entry);
	if (!ret && entry) {
#ifdef CONFIG_X86_IO_APIC
		acpi_reroute_boot_interrupt(dev, entry);
#endif /* CONFIG_X86_IO_APIC */
		FUNC0((ACPI_DB_INFO, "Found %s[%c] _PRT entry\n",
				  FUNC4(dev), FUNC6(pin)));
		return entry;
	}

	/*
	 * Attempt to derive an IRQ for this device from a parent bridge's
	 * PCI interrupt routing entry (eg. yenta bridge and add-in card bridge).
	 */
	bridge = dev->bus->self;
	while (bridge) {
		pin = FUNC5(dev, pin);

		if ((bridge->class >> 8) == PCI_CLASS_BRIDGE_CARDBUS) {
			/* PC card has the same IRQ as its cardbridge */
			bridge_pin = bridge->pin;
			if (!bridge_pin) {
				FUNC0((ACPI_DB_INFO,
						  "No interrupt pin configured for device %s\n",
						  FUNC4(bridge)));
				return NULL;
			}
			pin = bridge_pin;
		}

		ret = FUNC1(bridge, pin, &entry);
		if (!ret && entry) {
			FUNC0((ACPI_DB_INFO,
					 "Derived GSI for %s INT %c from %s\n",
					 FUNC4(dev), FUNC6(orig_pin),
					 FUNC4(bridge)));
			return entry;
		}

		dev = bridge;
		bridge = dev->bus->self;
	}

	FUNC3(&dev->dev, "can't derive routing for PCI INT %c\n",
		 FUNC6(orig_pin));
	return NULL;
}