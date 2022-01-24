#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fwnode_handle {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_4__ {struct fwnode_handle* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 struct fwnode_handle* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct fwnode_handle const*) ; 
 scalar_t__ FUNC5 (struct fwnode_handle const*) ; 
 TYPE_2__* FUNC6 (struct fwnode_handle const*) ; 
 TYPE_1__* FUNC7 (struct fwnode_handle const*) ; 

struct fwnode_handle *FUNC8(const struct fwnode_handle *fwnode)
{
	if (FUNC4(fwnode)) {
		/* All data nodes have parent pointer so just return that */
		return FUNC6(fwnode)->parent;
	} else if (FUNC5(fwnode)) {
		acpi_handle handle, parent_handle;

		handle = FUNC7(fwnode)->handle;
		if (FUNC0(FUNC3(handle, &parent_handle))) {
			struct acpi_device *adev;

			if (!FUNC1(parent_handle, &adev))
				return FUNC2(adev);
		}
	}

	return NULL;
}