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
struct pci_dev {TYPE_1__* bus; } ;
struct acpi_prt_entry {int dummy; } ;
struct acpi_pci_routing_table {scalar_t__ length; } ;
struct acpi_buffer {struct acpi_pci_routing_table* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ * acpi_handle ;
struct TYPE_2__ {scalar_t__ bridge; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pci_dev*,int,struct acpi_pci_routing_table*,struct acpi_prt_entry**) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_pci_routing_table*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev,
			  int pin, struct acpi_prt_entry **entry_ptr)
{
	acpi_status status;
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	struct acpi_pci_routing_table *entry;
	acpi_handle handle = NULL;

	if (dev->bus->bridge)
		handle = FUNC1(dev->bus->bridge);

	if (!handle)
		return -ENODEV;

	/* 'handle' is the _PRT's parent (root bridge or PCI-PCI bridge) */
	status = FUNC2(handle, &buffer);
	if (FUNC0(status)) {
		FUNC4(buffer.pointer);
		return -ENODEV;
	}

	entry = buffer.pointer;
	while (entry && (entry->length > 0)) {
		if (!FUNC3(handle, dev, pin,
						 entry, entry_ptr))
			break;
		entry = (struct acpi_pci_routing_table *)
		    ((unsigned long)entry + entry->length);
	}

	FUNC4(buffer.pointer);
	return 0;
}