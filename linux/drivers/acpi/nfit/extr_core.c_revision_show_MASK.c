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
struct nvdimm_bus_descriptor {int dummy; } ;
struct nvdimm_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int revision; } ;
struct acpi_nfit_desc {TYPE_1__ acpi_header; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct acpi_nfit_desc* FUNC1 (struct nvdimm_bus_descriptor*) ; 
 struct nvdimm_bus_descriptor* FUNC2 (struct nvdimm_bus*) ; 
 struct nvdimm_bus* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nvdimm_bus *nvdimm_bus = FUNC3(dev);
	struct nvdimm_bus_descriptor *nd_desc = FUNC2(nvdimm_bus);
	struct acpi_nfit_desc *acpi_desc = FUNC1(nd_desc);

	return FUNC0(buf, "%d\n", acpi_desc->acpi_header.revision);
}