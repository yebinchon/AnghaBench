#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct acpi_pci_root {TYPE_1__* bus; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
struct TYPE_3__ {int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct acpi_pci_root* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_pci_root*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_pci_root*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_pci_root*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct acpi_device *device)
{
	struct acpi_pci_root *root = FUNC1(device);

	FUNC8();

	FUNC10(root->bus);

	FUNC7(root);
	FUNC3(root->bus->bridge, false);
	FUNC6(device);

	FUNC9(root->bus);
	FUNC0(FUNC2(root));

	FUNC4(device->handle);

	FUNC11();

	FUNC5(root);
}