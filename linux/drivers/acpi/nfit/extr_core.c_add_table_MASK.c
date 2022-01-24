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
struct nfit_table_prev {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_header {int length; int type; } ;
struct acpi_nfit_desc {struct device* dev; } ;

/* Variables and functions */
#define  ACPI_NFIT_TYPE_CAPABILITIES 135 
#define  ACPI_NFIT_TYPE_CONTROL_REGION 134 
#define  ACPI_NFIT_TYPE_DATA_REGION 133 
#define  ACPI_NFIT_TYPE_FLUSH_ADDRESS 132 
#define  ACPI_NFIT_TYPE_INTERLEAVE 131 
#define  ACPI_NFIT_TYPE_MEMORY_MAP 130 
#define  ACPI_NFIT_TYPE_SMBIOS 129 
#define  ACPI_NFIT_TYPE_SYSTEM_ADDRESS 128 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_nfit_desc*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,int) ; 

__attribute__((used)) static void *FUNC11(struct acpi_nfit_desc *acpi_desc,
		struct nfit_table_prev *prev, void *table, const void *end)
{
	struct device *dev = acpi_desc->dev;
	struct acpi_nfit_header *hdr;
	void *err = FUNC0(-ENOMEM);

	if (table >= end)
		return NULL;

	hdr = table;
	if (!hdr->length) {
		FUNC10(dev, "found a zero length table '%d' parsing nfit\n",
			hdr->type);
		return NULL;
	}

	switch (hdr->type) {
	case ACPI_NFIT_TYPE_SYSTEM_ADDRESS:
		if (!FUNC7(acpi_desc, prev, table))
			return err;
		break;
	case ACPI_NFIT_TYPE_MEMORY_MAP:
		if (!FUNC5(acpi_desc, prev, table))
			return err;
		break;
	case ACPI_NFIT_TYPE_CONTROL_REGION:
		if (!FUNC2(acpi_desc, prev, table))
			return err;
		break;
	case ACPI_NFIT_TYPE_DATA_REGION:
		if (!FUNC1(acpi_desc, prev, table))
			return err;
		break;
	case ACPI_NFIT_TYPE_INTERLEAVE:
		if (!FUNC4(acpi_desc, prev, table))
			return err;
		break;
	case ACPI_NFIT_TYPE_FLUSH_ADDRESS:
		if (!FUNC3(acpi_desc, prev, table))
			return err;
		break;
	case ACPI_NFIT_TYPE_SMBIOS:
		FUNC8(dev, "smbios\n");
		break;
	case ACPI_NFIT_TYPE_CAPABILITIES:
		if (!FUNC6(acpi_desc, table))
			return err;
		break;
	default:
		FUNC9(dev, "unknown table '%d' parsing nfit\n", hdr->type);
		break;
	}

	return table + hdr->length;
}