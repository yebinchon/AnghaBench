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
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_size ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

acpi_size FUNC3(struct acpi_namespace_node *node)
{
	acpi_size size;

	/* Validate the Node */

	if (FUNC1(node) != ACPI_DESC_TYPE_NAMED) {
		FUNC0((AE_INFO,
			    "Invalid/cached reference target node: %p, descriptor type %d",
			    node, FUNC1(node)));
		return (0);
	}

	size = FUNC2(node, NULL, 0, FALSE);
	return (size);
}