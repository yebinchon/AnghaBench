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
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC1(struct acpi_device *device)
{
	return FUNC0(device->handle, "_FIF") &&
	       FUNC0(device->handle, "_FPS") &&
	       FUNC0(device->handle, "_FSL") &&
	       FUNC0(device->handle, "_FST");
}