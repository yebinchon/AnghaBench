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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; scalar_t__ parent; } ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_CONSOLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_DUPLICATE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_REDIRECTABLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DISPLAY_SUMMARY ; 
 int /*<<< orphan*/  ACPI_NAMESPACE_ROOT ; 
 int /*<<< orphan*/  ACPI_OWNER_ID_MAX ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(char *start_arg, char *depth_arg)
{
	acpi_handle subtree_entry = acpi_gbl_root_node;
	u32 max_depth = ACPI_UINT32_MAX;

	/* No argument given, just start at the root and dump entire namespace */

	if (start_arg) {
		subtree_entry = FUNC0(start_arg);
		if (!subtree_entry) {
			return;
		}

		/* Now we can check for the depth argument */

		if (depth_arg) {
			max_depth = FUNC4(depth_arg, NULL, 0);
		}
	}

	FUNC1(ACPI_DB_DUPLICATE_OUTPUT);

	if (((struct acpi_namespace_node *)subtree_entry)->parent) {
		FUNC3("ACPI Namespace (from %4.4s (%p) subtree):\n",
			       ((struct acpi_namespace_node *)subtree_entry)->
			       name.ascii, subtree_entry);
	} else {
		FUNC3("ACPI Namespace (from %s):\n",
			       ACPI_NAMESPACE_ROOT);
	}

	/* Display the subtree */

	FUNC1(ACPI_DB_REDIRECTABLE_OUTPUT);
	FUNC2(ACPI_TYPE_ANY, ACPI_DISPLAY_SUMMARY, max_depth,
			     ACPI_OWNER_ID_MAX, subtree_entry);
	FUNC1(ACPI_DB_CONSOLE_OUTPUT);
}