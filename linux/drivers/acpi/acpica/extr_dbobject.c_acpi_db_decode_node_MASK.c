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
struct acpi_namespace_node {int flags; int type; } ;

/* Variables and functions */
#define  ACPI_TYPE_DEVICE 129 
#define  ACPI_TYPE_THERMAL 128 
 int ANOBJ_METHOD_ARG ; 
 int ANOBJ_METHOD_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*) ; 

__attribute__((used)) static void FUNC4(struct acpi_namespace_node *node)
{

	FUNC2("<Node>          Name %4.4s",
		       FUNC3(node));

	if (node->flags & ANOBJ_METHOD_ARG) {
		FUNC2(" [Method Arg]");
	}
	if (node->flags & ANOBJ_METHOD_LOCAL) {
		FUNC2(" [Method Local]");
	}

	switch (node->type) {

		/* These types have no attached object */

	case ACPI_TYPE_DEVICE:

		FUNC2(" Device");
		break;

	case ACPI_TYPE_THERMAL:

		FUNC2(" Thermal Zone");
		break;

	default:

		FUNC0(FUNC1
					       (node));
		break;
	}
}