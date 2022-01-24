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
struct TYPE_2__ {int /*<<< orphan*/  ascii; } ;
struct acpi_namespace_node {scalar_t__ type; TYPE_1__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_CONSOLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_REDIRECTABLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_LV_RESOURCES ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 struct acpi_namespace_node* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_dbg_level ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void FUNC7(char *object_arg)
{
	struct acpi_namespace_node *node;

	FUNC2(ACPI_DB_REDIRECTABLE_OUTPUT);
	acpi_dbg_level |= ACPI_LV_RESOURCES;

	/* Asterisk means "display resources for all devices" */

	if (!object_arg || (!FUNC6(object_arg, "*"))) {
		(void)FUNC5(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
					  ACPI_UINT32_MAX,
					  acpi_db_device_resources, NULL, NULL,
					  NULL);
	} else {
		/* Convert string to object pointer */

		node = FUNC0(object_arg);
		if (node) {
			if (node->type != ACPI_TYPE_DEVICE) {
				FUNC3
				    ("%4.4s: Name is not a device object (%s)\n",
				     node->name.ascii,
				     FUNC4(node->type));
			} else {
				(void)FUNC1(node, 0, NULL,
							       NULL);
			}
		}
	}

	FUNC2(ACPI_DB_CONSOLE_OUTPUT);
}