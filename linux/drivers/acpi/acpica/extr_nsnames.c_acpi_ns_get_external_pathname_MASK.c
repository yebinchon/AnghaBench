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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FALSE ; 
 char* FUNC1 (struct acpi_namespace_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_get_external_pathname ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

char *FUNC3(struct acpi_namespace_node *node)
{
	char *name_buffer;

	FUNC0(ns_get_external_pathname, node);

	name_buffer = FUNC1(node, FALSE);
	FUNC2(name_buffer);
}