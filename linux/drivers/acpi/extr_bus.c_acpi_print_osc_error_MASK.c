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
struct TYPE_2__ {int length; scalar_t__ pointer; } ;
struct acpi_osc_context {TYPE_1__ cap; int /*<<< orphan*/  uuid_str; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(acpi_handle handle,
				 struct acpi_osc_context *context, char *error)
{
	int i;

	FUNC0(handle, "(%s): %s\n", context->uuid_str, error);

	FUNC1("_OSC request data:");
	for (i = 0; i < context->cap.length; i += sizeof(u32))
		FUNC1(" %x", *((u32 *)(context->cap.pointer + i)));

	FUNC1("\n");
}