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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef  scalar_t__ acpi_size ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_DB_NAMES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  ACPI_GET_FUNCTION_NAME ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ FUNC4 (struct acpi_namespace_node*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_get_normalized_pathname ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

char *FUNC6(struct acpi_namespace_node *node,
				      u8 no_trailing)
{
	char *name_buffer;
	acpi_size size;

	FUNC3(ns_get_normalized_pathname, node);

	/* Calculate required buffer size based on depth below root */

	size = FUNC4(node, NULL, 0, no_trailing);
	if (!size) {
		FUNC5(NULL);
	}

	/* Allocate a buffer to be returned to caller */

	name_buffer = FUNC0(size);
	if (!name_buffer) {
		FUNC2((AE_INFO, "Could not allocate %u bytes", (u32)size));
		FUNC5(NULL);
	}

	/* Build the path in the allocated buffer */

	(void)FUNC4(node, name_buffer, size,
					    no_trailing);

	FUNC1((ACPI_DB_NAMES, "%s: Path \"%s\"\n",
			      ACPI_GET_FUNCTION_NAME, name_buffer));

	FUNC5(name_buffer);
}