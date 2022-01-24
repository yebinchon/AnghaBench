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
typedef  int u32 ;
struct acpi_pci_root {int osc_control_set; int osc_support_set; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_SUPPORT ; 
 int /*<<< orphan*/  AE_TYPE ; 
 size_t OSC_CONTROL_DWORD ; 
 int OSC_PCI_CONTROL_MASKS ; 
 size_t OSC_QUERY_DWORD ; 
 size_t OSC_SUPPORT_DWORD ; 
 struct acpi_pci_root* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_pci_root*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_pci_root*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  osc_lock ; 

acpi_status FUNC8(acpi_handle handle, u32 *mask, u32 req)
{
	struct acpi_pci_root *root;
	acpi_status status = AE_OK;
	u32 ctrl, capbuf[3];

	if (!mask)
		return AE_BAD_PARAMETER;

	ctrl = *mask & OSC_PCI_CONTROL_MASKS;
	if ((ctrl & req) != req)
		return AE_TYPE;

	root = FUNC2(handle);
	if (!root)
		return AE_NOT_EXIST;

	FUNC6(&osc_lock);

	*mask = ctrl | root->osc_control_set;
	/* No need to evaluate _OSC if the control was already granted. */
	if ((root->osc_control_set & ctrl) == ctrl)
		goto out;

	/* Need to check the available controls bits before requesting them. */
	while (*mask) {
		status = FUNC3(root, root->osc_support_set, mask);
		if (FUNC0(status))
			goto out;
		if (ctrl == *mask)
			break;
		FUNC5(root, "platform does not support",
				   ctrl & ~(*mask));
		ctrl = *mask;
	}

	if ((ctrl & req) != req) {
		FUNC5(root, "not requesting control; platform does not support",
				   req & ~(ctrl));
		status = AE_SUPPORT;
		goto out;
	}

	capbuf[OSC_QUERY_DWORD] = 0;
	capbuf[OSC_SUPPORT_DWORD] = root->osc_support_set;
	capbuf[OSC_CONTROL_DWORD] = ctrl;
	status = FUNC4(handle, capbuf, mask);
	if (FUNC1(status))
		root->osc_control_set = *mask;
out:
	FUNC7(&osc_lock);
	return status;
}