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
struct resource {int /*<<< orphan*/  parent; } ;
struct device {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct acpi_device *adev,
	const struct resource *src, struct resource *dest)
{
	struct device *parent;

	*dest = *src;

	/*
	 * If the device has parent we need to take its resources into
	 * account as well because this device might consume part of those.
	 */
	parent = FUNC0(adev->parent);
	if (parent && FUNC1(parent))
		dest->parent = FUNC2(FUNC3(parent), dest);
}