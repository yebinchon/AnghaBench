#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  count1; int /*<<< orphan*/  object_type1; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int expected_btypes; int /*<<< orphan*/  argument_list; } ;
union acpi_predefined_info {TYPE_3__ ret_info; TYPE_2__ info; } ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ACPI_RTYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,struct acpi_namespace_node*,union acpi_predefined_info const*) ; 
 char* FUNC3 (struct acpi_namespace_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 union acpi_predefined_info* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC7(acpi_handle obj_handle,
				  u32 nesting_level,
				  void *context, void **return_value)
{
	struct acpi_namespace_node *node =
	    (struct acpi_namespace_node *)obj_handle;
	u32 *count = (u32 *)context;
	const union acpi_predefined_info *predefined;
	const union acpi_predefined_info *package = NULL;
	char *pathname;
	char string_buffer[48];

	predefined = FUNC6(node->name.ascii);
	if (!predefined) {
		return (AE_OK);
	}

	pathname = FUNC3(node, TRUE);
	if (!pathname) {
		return (AE_OK);
	}

	/* If method returns a package, the info is in the next table entry */

	if (predefined->info.expected_btypes & ACPI_RTYPE_PACKAGE) {
		package = predefined + 1;
	}

	FUNC5(string_buffer,
					  predefined->info.expected_btypes);

	FUNC4("%-32s Arguments %X, Return Types: %s", pathname,
		       FUNC1(predefined->info.argument_list),
		       string_buffer);

	if (package) {
		FUNC4(" (PkgType %2.2X, ObjType %2.2X, Count %2.2X)",
			       package->ret_info.type,
			       package->ret_info.object_type1,
			       package->ret_info.count1);
	}

	FUNC4("\n");

	/* Check that the declared argument count matches the ACPI spec */

	FUNC2(pathname, node, predefined);

	FUNC0(pathname);
	(*count)++;
	return (AE_OK);
}