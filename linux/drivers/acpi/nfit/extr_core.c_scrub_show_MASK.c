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
struct acpi_nfit_desc {int scrub_count; int scrub_tmo; int /*<<< orphan*/  init_mutex; int /*<<< orphan*/  dwork; int /*<<< orphan*/  scrub_flags; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARS_BUSY ; 
 int /*<<< orphan*/  ARS_CANCEL ; 
 int /*<<< orphan*/  ARS_POLL ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct nvdimm_bus_descriptor* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  nfit_wq ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct acpi_nfit_desc* FUNC10 (struct nvdimm_bus_descriptor*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nvdimm_bus_descriptor *nd_desc;
	struct acpi_nfit_desc *acpi_desc;
	ssize_t rc = -ENXIO;
	bool busy;

	FUNC5(dev);
	nd_desc = FUNC1(dev);
	if (!nd_desc) {
		FUNC6(dev);
		return rc;
	}
	acpi_desc = FUNC10(nd_desc);

	FUNC3(&acpi_desc->init_mutex);
	busy = FUNC9(ARS_BUSY, &acpi_desc->scrub_flags)
		&& !FUNC9(ARS_CANCEL, &acpi_desc->scrub_flags);
	rc = FUNC7(buf, "%d%s", acpi_desc->scrub_count, busy ? "+\n" : "\n");
	/* Allow an admin to poll the busy state at a higher rate */
	if (busy && FUNC0(CAP_SYS_RAWIO) && !FUNC8(ARS_POLL,
				&acpi_desc->scrub_flags)) {
		acpi_desc->scrub_tmo = 1;
		FUNC2(nfit_wq, &acpi_desc->dwork, HZ);
	}

	FUNC4(&acpi_desc->init_mutex);
	FUNC6(dev);
	return rc;
}