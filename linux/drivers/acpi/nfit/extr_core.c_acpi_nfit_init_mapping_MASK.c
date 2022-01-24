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
struct nvdimm {int dummy; } ;
struct nfit_spa {int /*<<< orphan*/  nd_region; struct acpi_nfit_system_address* spa; } ;
struct nfit_mem {TYPE_1__* bdw; } ;
struct nd_region_desc {int num_mappings; struct nd_mapping_desc* mapping; int /*<<< orphan*/  num_lanes; } ;
struct nd_mapping_desc {int /*<<< orphan*/  start; int /*<<< orphan*/  size; struct nvdimm* nvdimm; } ;
struct nd_blk_region_desc {int /*<<< orphan*/  do_io; int /*<<< orphan*/  enable; } ;
struct acpi_nfit_system_address {int /*<<< orphan*/  range_index; } ;
struct acpi_nfit_memory_map {int /*<<< orphan*/  region_size; int /*<<< orphan*/  address; int /*<<< orphan*/  device_handle; } ;
struct acpi_nfit_desc {int /*<<< orphan*/  nvdimm_bus; int /*<<< orphan*/  blk_do_io; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  windows; int /*<<< orphan*/  start_address; int /*<<< orphan*/  capacity; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
#define  NFIT_SPA_DCR 130 
#define  NFIT_SPA_PM 129 
#define  NFIT_SPA_VOLATILE 128 
 int /*<<< orphan*/  acpi_nfit_blk_region_enable ; 
 struct nvdimm* FUNC0 (struct acpi_nfit_desc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct acpi_nfit_desc*,struct nd_region_desc*,struct acpi_nfit_system_address*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct acpi_nfit_system_address*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nd_region_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvdimm*) ; 
 struct nfit_mem* FUNC7 (struct nvdimm*) ; 
 struct nd_blk_region_desc* FUNC8 (struct nd_region_desc*) ; 

__attribute__((used)) static int FUNC9(struct acpi_nfit_desc *acpi_desc,
		struct nd_mapping_desc *mapping, struct nd_region_desc *ndr_desc,
		struct acpi_nfit_memory_map *memdev,
		struct nfit_spa *nfit_spa)
{
	struct nvdimm *nvdimm = FUNC0(acpi_desc,
			memdev->device_handle);
	struct acpi_nfit_system_address *spa = nfit_spa->spa;
	struct nd_blk_region_desc *ndbr_desc;
	struct nfit_mem *nfit_mem;
	int rc;

	if (!nvdimm) {
		FUNC3(acpi_desc->dev, "spa%d dimm: %#x not found\n",
				spa->range_index, memdev->device_handle);
		return -ENODEV;
	}

	mapping->nvdimm = nvdimm;
	switch (FUNC4(spa)) {
	case NFIT_SPA_PM:
	case NFIT_SPA_VOLATILE:
		mapping->start = memdev->address;
		mapping->size = memdev->region_size;
		break;
	case NFIT_SPA_DCR:
		nfit_mem = FUNC7(nvdimm);
		if (!nfit_mem || !nfit_mem->bdw) {
			FUNC2(acpi_desc->dev, "spa%d %s missing bdw\n",
					spa->range_index, FUNC6(nvdimm));
			break;
		}

		mapping->size = nfit_mem->bdw->capacity;
		mapping->start = nfit_mem->bdw->start_address;
		ndr_desc->num_lanes = nfit_mem->bdw->windows;
		ndr_desc->mapping = mapping;
		ndr_desc->num_mappings = 1;
		ndbr_desc = FUNC8(ndr_desc);
		ndbr_desc->enable = acpi_nfit_blk_region_enable;
		ndbr_desc->do_io = acpi_desc->blk_do_io;
		rc = FUNC1(acpi_desc, ndr_desc, spa);
		if (rc)
			return rc;
		nfit_spa->nd_region = FUNC5(acpi_desc->nvdimm_bus,
				ndr_desc);
		if (!nfit_spa->nd_region)
			return -ENOMEM;
		break;
	}

	return 0;
}