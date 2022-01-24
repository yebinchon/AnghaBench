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
struct input_dev {int dummy; } ;
struct acpi_device {int dummy; } ;
struct acpi_button {int last_state; int /*<<< orphan*/  last_time; } ;

/* Variables and functions */
 struct acpi_button* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 struct acpi_device* FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct input_dev *input)
{
	struct acpi_device *device = FUNC3(input);
	struct acpi_button *button = FUNC0(device);

	button->last_state = !!FUNC1(device);
	button->last_time = FUNC4();
	FUNC2(device);

	return 0;
}