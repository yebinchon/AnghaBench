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
struct acpi_interface_info {int flags; char* name; struct acpi_interface_info* next; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_OSI_INVALID ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_osi_mutex ; 
 struct acpi_interface_info* acpi_gbl_supported_interfaces ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 

void FUNC9(char *action_arg, char *interface_name_arg)
{
	struct acpi_interface_info *next_interface;
	char *sub_string;
	acpi_status status;

	/* If no arguments, just display current interface list */

	if (!action_arg) {
		(void)FUNC3(acpi_gbl_osi_mutex,
					    ACPI_WAIT_FOREVER);

		next_interface = acpi_gbl_supported_interfaces;
		while (next_interface) {
			if (!(next_interface->flags & ACPI_OSI_INVALID)) {
				FUNC4("%s\n", next_interface->name);
			}

			next_interface = next_interface->next;
		}

		FUNC5(acpi_gbl_osi_mutex);
		return;
	}

	/* If action_arg exists, so must interface_name_arg */

	if (!interface_name_arg) {
		FUNC4("Missing Interface Name argument\n");
		return;
	}

	/* Uppercase the action for match below */

	FUNC7(action_arg);

	/* install - install an interface */

	sub_string = FUNC8("INSTALL", action_arg);
	if (sub_string) {
		status = FUNC2(interface_name_arg);
		if (FUNC0(status)) {
			FUNC4("%s, while installing \"%s\"\n",
				       FUNC1(status),
				       interface_name_arg);
		}
		return;
	}

	/* remove - remove an interface */

	sub_string = FUNC8("REMOVE", action_arg);
	if (sub_string) {
		status = FUNC6(interface_name_arg);
		if (FUNC0(status)) {
			FUNC4("%s, while removing \"%s\"\n",
				       FUNC1(status),
				       interface_name_arg);
		}
		return;
	}

	/* Invalid action_arg */

	FUNC4("Invalid action argument: %s\n", action_arg);
	return;
}