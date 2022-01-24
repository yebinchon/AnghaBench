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
struct pci_bus {int dummy; } ;
struct device {int /*<<< orphan*/  fwnode; } ;
struct acpi_iort_root_complex {scalar_t__ pci_segment_number; } ;
struct acpi_iort_node {scalar_t__ type; scalar_t__ node_data; } ;
struct acpi_iort_named_component {int /*<<< orphan*/  device_name; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
struct acpi_buffer {int /*<<< orphan*/  pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_FULL_PATHNAME ; 
 scalar_t__ ACPI_IORT_NODE_NAMED_COMPONENT ; 
 scalar_t__ ACPI_IORT_NODE_PCI_ROOT_COMPLEX ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC6 (int /*<<< orphan*/ ) ; 
 struct pci_bus* FUNC7 (struct device*) ; 

__attribute__((used)) static acpi_status FUNC8(struct acpi_iort_node *node,
					    void *context)
{
	struct device *dev = context;
	acpi_status status = AE_NOT_FOUND;

	if (node->type == ACPI_IORT_NODE_NAMED_COMPONENT) {
		struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, NULL };
		struct acpi_device *adev = FUNC6(dev->fwnode);
		struct acpi_iort_named_component *ncomp;

		if (!adev)
			goto out;

		status = FUNC1(adev->handle, ACPI_FULL_PATHNAME, &buf);
		if (FUNC0(status)) {
			FUNC3(dev, "Can't get device full path name\n");
			goto out;
		}

		ncomp = (struct acpi_iort_named_component *)node->node_data;
		status = !FUNC5(ncomp->device_name, buf.pointer) ?
							AE_OK : AE_NOT_FOUND;
		FUNC2(buf.pointer);
	} else if (node->type == ACPI_IORT_NODE_PCI_ROOT_COMPLEX) {
		struct acpi_iort_root_complex *pci_rc;
		struct pci_bus *bus;

		bus = FUNC7(dev);
		pci_rc = (struct acpi_iort_root_complex *)node->node_data;

		/*
		 * It is assumed that PCI segment numbers maps one-to-one
		 * with root complexes. Each segment number can represent only
		 * one root complex.
		 */
		status = pci_rc->pci_segment_number == FUNC4(bus) ?
							AE_OK : AE_NOT_FOUND;
	}
out:
	return status;
}