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
struct TYPE_2__ {scalar_t__ value; } ;
union acpi_object {TYPE_1__ integer; } ;
struct tpm_chip {int /*<<< orphan*/  acpi_dev_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  CRB_ACPI_START_INDEX ; 
 int /*<<< orphan*/  CRB_ACPI_START_REVISION_ID ; 
 int ENXIO ; 
 union acpi_object* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  crb_acpi_start_guid ; 

__attribute__((used)) static int FUNC2(struct tpm_chip *chip)
{
	union acpi_object *obj;
	int rc;

	obj = FUNC1(chip->acpi_dev_handle,
				&crb_acpi_start_guid,
				CRB_ACPI_START_REVISION_ID,
				CRB_ACPI_START_INDEX,
				NULL);
	if (!obj)
		return -ENXIO;
	rc = obj->integer.value == 0 ? 0 : -ENXIO;
	FUNC0(obj);
	return rc;
}