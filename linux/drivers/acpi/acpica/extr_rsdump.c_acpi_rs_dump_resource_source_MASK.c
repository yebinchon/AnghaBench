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
struct acpi_resource_source {int index; char* string_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3(struct acpi_resource_source *resource_source)
{
	FUNC0();

	if (resource_source->index == 0xFF) {
		return;
	}

	FUNC1("Resource Source Index", resource_source->index);

	FUNC2("Resource Source",
			   resource_source->string_ptr ?
			   resource_source->string_ptr : "[Not Specified]");
}