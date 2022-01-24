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
struct acpi_nfit_desc {int scrub_mode; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
#define  HW_ERROR_SCRUB_OFF 129 
#define  HW_ERROR_SCRUB_ON 128 
 struct nvdimm_bus_descriptor* FUNC0 (struct device*) ; 
 size_t FUNC1 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct acpi_nfit_desc* FUNC4 (struct nvdimm_bus_descriptor*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct nvdimm_bus_descriptor *nd_desc;
	ssize_t rc;
	long val;

	rc = FUNC1(buf, 0, &val);
	if (rc)
		return rc;

	FUNC2(dev);
	nd_desc = FUNC0(dev);
	if (nd_desc) {
		struct acpi_nfit_desc *acpi_desc = FUNC4(nd_desc);

		switch (val) {
		case HW_ERROR_SCRUB_ON:
			acpi_desc->scrub_mode = HW_ERROR_SCRUB_ON;
			break;
		case HW_ERROR_SCRUB_OFF:
			acpi_desc->scrub_mode = HW_ERROR_SCRUB_OFF;
			break;
		default:
			rc = -EINVAL;
			break;
		}
	}
	FUNC3(dev);
	if (rc)
		return rc;
	return size;
}