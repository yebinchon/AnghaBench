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
struct resource {int /*<<< orphan*/ * name; } ;
struct resource_win {struct resource res; } ;
struct acpi_resource {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct acpi_resource*,struct resource_win*) ; 
 scalar_t__ FUNC1 (struct acpi_resource*,struct resource*) ; 

__attribute__((used)) static int FUNC2(struct acpi_resource *ares, void *data)
{
	struct resource *io_res = data;
	struct resource_win win;
	struct resource *res = &(win.res);

	if (FUNC1(ares, res) ||
	    FUNC0(ares, &win)) {
		*io_res = *res;
		io_res->name = NULL;
	}

	return 1;
}