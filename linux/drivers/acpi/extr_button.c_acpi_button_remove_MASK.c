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
struct acpi_device {int dummy; } ;
struct acpi_button {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 struct acpi_button* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_button*) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device)
{
	struct acpi_button *button = FUNC1(device);

	FUNC0(device);
	FUNC2(button->input);
	FUNC3(button);
	return 0;
}