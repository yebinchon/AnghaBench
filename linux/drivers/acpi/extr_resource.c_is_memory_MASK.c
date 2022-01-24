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
struct resource {int dummy; } ;
struct resource_win {struct resource res; } ;
struct acpi_resource {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct acpi_resource*,struct resource_win*) ; 
 scalar_t__ FUNC1 (struct acpi_resource*,struct resource_win*) ; 
 scalar_t__ FUNC2 (struct acpi_resource*,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource_win*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct acpi_resource *ares, void *not_used)
{
	struct resource_win win;
	struct resource *res = &win.res;

	FUNC3(&win, 0, sizeof(win));

	return !(FUNC2(ares, res)
	       || FUNC0(ares, &win)
	       || FUNC1(ares, &win));
}