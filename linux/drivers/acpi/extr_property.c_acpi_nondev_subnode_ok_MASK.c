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
struct TYPE_6__ {TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
struct list_head {int dummy; } ;
struct fwnode_handle {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_4__ {int /*<<< orphan*/  pointer; } ;
struct TYPE_5__ {TYPE_1__ string; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,union acpi_object const*,struct list_head*,struct fwnode_handle*) ; 

__attribute__((used)) static bool FUNC3(acpi_handle scope,
				   const union acpi_object *link,
				   struct list_head *list,
				   struct fwnode_handle *parent)
{
	acpi_handle handle;
	acpi_status status;

	if (!scope)
		return false;

	status = FUNC1(scope, link->package.elements[1].string.pointer,
				 &handle);
	if (FUNC0(status))
		return false;

	return FUNC2(handle, link, list, parent);
}