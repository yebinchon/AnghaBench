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
typedef  int /*<<< orphan*/  win ;
struct resource {int flags; } ;
struct resource_win {struct resource res; } ;
struct acpi_resource {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_OK ; 
 int IORESOURCE_DISABLED ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IORESOURCE_PREFETCH ; 
 scalar_t__ FUNC0 (struct acpi_resource*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct acpi_resource*,struct resource_win*) ; 
 scalar_t__ FUNC2 (struct acpi_resource*,struct resource_win*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_resource*,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource_win*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static acpi_status FUNC5(struct acpi_resource *acpi_res, void *data)
{
	struct resource *res = data;
	struct resource_win win;

	/*
	 * We might assign this to 'res' later, make sure all pointers are
	 * cleared before the resource is added to the global list
	 */
	FUNC4(&win, 0, sizeof(win));

	res->flags = 0;
	if (FUNC0(acpi_res, IORESOURCE_MEM))
		return AE_OK;

	if (!FUNC3(acpi_res, res)) {
		if (FUNC1(acpi_res, &win) ||
		    FUNC2(acpi_res, &win))
			*res = win.res;
	}
	if ((res->flags & IORESOURCE_PREFETCH) ||
	    (res->flags & IORESOURCE_DISABLED))
		res->flags = 0;

	return AE_CTRL_TERMINATE;
}