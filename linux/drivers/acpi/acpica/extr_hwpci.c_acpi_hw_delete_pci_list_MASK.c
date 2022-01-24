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
struct acpi_pci_device {struct acpi_pci_device* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_pci_device*) ; 

__attribute__((used)) static void FUNC1(struct acpi_pci_device *list_head)
{
	struct acpi_pci_device *next;
	struct acpi_pci_device *previous;

	next = list_head;
	while (next) {
		previous = next;
		next = previous->next;
		FUNC0(previous);
	}
}