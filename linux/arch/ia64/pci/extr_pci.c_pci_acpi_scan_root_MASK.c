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
struct TYPE_4__ {int /*<<< orphan*/  node; struct acpi_device* companion; int /*<<< orphan*/  segment; } ;
struct pci_root_info {TYPE_2__ controller; int /*<<< orphan*/  common; int /*<<< orphan*/  io_resources; } ;
struct pci_bus {int dummy; } ;
struct TYPE_3__ {scalar_t__ start; } ;
struct acpi_pci_root {int /*<<< orphan*/  segment; TYPE_1__ secondary; struct acpi_device* device; } ;
struct acpi_device {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pci_bus* FUNC2 (struct acpi_pci_root*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 struct pci_root_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_acpi_root_ops ; 

struct pci_bus *FUNC5(struct acpi_pci_root *root)
{
	struct acpi_device *device = root->device;
	struct pci_root_info *info;

	info = FUNC4(sizeof(*info), GFP_KERNEL);
	if (!info) {
		FUNC3(&device->dev,
			"pci_bus %04x:%02x: ignored (out of memory)\n",
			root->segment, (int)root->secondary.start);
		return NULL;
	}

	info->controller.segment = root->segment;
	info->controller.companion = device;
	info->controller.node = FUNC1(device->handle);
	FUNC0(&info->io_resources);
	return FUNC2(root, &pci_acpi_root_ops,
				    &info->common, &info->controller);
}