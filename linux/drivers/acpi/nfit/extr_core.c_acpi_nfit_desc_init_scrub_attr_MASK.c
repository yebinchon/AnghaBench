#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kernfs_node {int dummy; } ;
struct TYPE_2__ {struct kernfs_node* sd; } ;
struct device {TYPE_1__ kobj; } ;
struct acpi_nfit_desc {void* scrub_count_state; int /*<<< orphan*/  nvdimm_bus; struct device* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 void* FUNC2 (struct kernfs_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct acpi_nfit_desc *acpi_desc)
{
	struct device *dev = acpi_desc->dev;
	struct kernfs_node *nfit;
	struct device *bus_dev;

	if (!FUNC0(acpi_desc->nvdimm_bus))
		return 0;

	bus_dev = FUNC4(acpi_desc->nvdimm_bus);
	nfit = FUNC2(bus_dev->kobj.sd, "nfit");
	if (!nfit) {
		FUNC1(dev, "sysfs_get_dirent 'nfit' failed\n");
		return -ENODEV;
	}
	acpi_desc->scrub_count_state = FUNC2(nfit, "scrub");
	FUNC3(nfit);
	if (!acpi_desc->scrub_count_state) {
		FUNC1(dev, "sysfs_get_dirent 'scrub' failed\n");
		return -ENODEV;
	}

	return 0;
}