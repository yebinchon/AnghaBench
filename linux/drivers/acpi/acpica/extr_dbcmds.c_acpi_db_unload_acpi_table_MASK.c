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
typedef  char acpi_namespace_node ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_handle ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(char *object_name)
{
	struct acpi_namespace_node *node;
	acpi_status status;

	/* Translate name to an Named object */

	node = FUNC2(object_name);
	if (!node) {
		return;
	}

	status = FUNC5(FUNC0(acpi_handle, node));
	if (FUNC1(status)) {
		FUNC4("Parent of [%s] (%p) unloaded and uninstalled\n",
			       object_name, node);
	} else {
		FUNC4("%s, while unloading parent table of [%s]\n",
			       FUNC3(status), object_name);
	}
}