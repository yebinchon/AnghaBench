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
struct nvdimm_bus_descriptor {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_desc {int /*<<< orphan*/  init_mutex; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct acpi_nfit_desc* FUNC4 (struct nvdimm_bus_descriptor*) ; 

__attribute__((used)) static int FUNC5(struct nvdimm_bus_descriptor *nd_desc)
{
	struct acpi_nfit_desc *acpi_desc = FUNC4(nd_desc);
	struct device *dev = acpi_desc->dev;

	/* Bounce the device lock to flush acpi_nfit_add / acpi_nfit_notify */
	FUNC2(dev);
	FUNC3(dev);

	/* Bounce the init_mutex to complete initial registration */
	FUNC0(&acpi_desc->init_mutex);
	FUNC1(&acpi_desc->init_mutex);

	return 0;
}