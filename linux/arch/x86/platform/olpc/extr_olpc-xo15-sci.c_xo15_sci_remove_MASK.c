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
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__ lid_wake_on_close_attr ; 
 int /*<<< orphan*/  sci_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xo15_sci_gpe ; 
 int /*<<< orphan*/  xo15_sci_gpe_handler ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device)
{
	FUNC0(NULL, xo15_sci_gpe);
	FUNC1(NULL, xo15_sci_gpe, xo15_sci_gpe_handler);
	FUNC2(&sci_work);
	FUNC3(&device->dev.kobj, &lid_wake_on_close_attr.attr);
	return 0;
}