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
struct TYPE_2__ {int /*<<< orphan*/  pointer; } ;
union acpi_object {TYPE_1__ string; } ;
struct tpm_chip {int /*<<< orphan*/  groups_cnt; int /*<<< orphan*/ ** groups; int /*<<< orphan*/  ppi_version; int /*<<< orphan*/  acpi_dev_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_STRING ; 
 int TPM_PPI_FN_VERSION ; 
 int /*<<< orphan*/  TPM_PPI_REVISION_ID_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 union acpi_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppi_attr_grp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tpm_ppi_guid ; 

void FUNC4(struct tpm_chip *chip)
{
	union acpi_object *obj;

	if (!chip->acpi_dev_handle)
		return;

	if (!FUNC1(chip->acpi_dev_handle, &tpm_ppi_guid,
			    TPM_PPI_REVISION_ID_1, 1 << TPM_PPI_FN_VERSION))
		return;

	/* Cache PPI version string. */
	obj = FUNC2(chip->acpi_dev_handle, &tpm_ppi_guid,
				      TPM_PPI_REVISION_ID_1,
				      TPM_PPI_FN_VERSION,
				      NULL, ACPI_TYPE_STRING);
	if (obj) {
		FUNC3(chip->ppi_version, obj->string.pointer,
			sizeof(chip->ppi_version));
		FUNC0(obj);
	}

	chip->groups[chip->groups_cnt++] = &ppi_attr_grp;
}