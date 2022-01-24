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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_desc {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARS_REQ_LONG ; 
 size_t EINVAL ; 
 size_t FUNC0 (struct acpi_nfit_desc*,int /*<<< orphan*/ ) ; 
 struct nvdimm_bus_descriptor* FUNC1 (struct device*) ; 
 size_t FUNC2 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct acpi_nfit_desc* FUNC5 (struct nvdimm_bus_descriptor*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct nvdimm_bus_descriptor *nd_desc;
	ssize_t rc;
	long val;

	rc = FUNC2(buf, 0, &val);
	if (rc)
		return rc;
	if (val != 1)
		return -EINVAL;

	FUNC3(dev);
	nd_desc = FUNC1(dev);
	if (nd_desc) {
		struct acpi_nfit_desc *acpi_desc = FUNC5(nd_desc);

		rc = FUNC0(acpi_desc, ARS_REQ_LONG);
	}
	FUNC4(dev);
	if (rc)
		return rc;
	return size;
}