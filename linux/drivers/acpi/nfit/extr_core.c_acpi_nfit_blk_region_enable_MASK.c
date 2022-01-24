#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvdimm_bus_descriptor {int dummy; } ;
struct nvdimm_bus {int dummy; } ;
struct nvdimm {int dummy; } ;
struct nfit_mem {TYPE_6__* memdev_dcr; int /*<<< orphan*/  idt_dcr; TYPE_5__* spa_dcr; TYPE_4__* dcr; TYPE_2__* memdev_bdw; int /*<<< orphan*/  idt_bdw; TYPE_5__* spa_bdw; TYPE_1__* bdw; } ;
struct TYPE_9__ {scalar_t__ base; } ;
struct nfit_blk_mmio {int line_size; TYPE_5__* spa; int /*<<< orphan*/  idt; int /*<<< orphan*/  base_offset; int /*<<< orphan*/  size; TYPE_3__ addr; } ;
struct nfit_blk {scalar_t__ stat_offset; scalar_t__ cmd_offset; int /*<<< orphan*/  nd_region; struct nfit_blk_mmio* mmio; int /*<<< orphan*/  bdw_offset; } ;
struct nd_blk_region {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  interleave_ways; int /*<<< orphan*/  region_offset; } ;
struct TYPE_11__ {int /*<<< orphan*/  length; int /*<<< orphan*/  address; } ;
struct TYPE_10__ {int /*<<< orphan*/  window_size; scalar_t__ status_offset; scalar_t__ command_offset; } ;
struct TYPE_8__ {int /*<<< orphan*/  interleave_ways; int /*<<< orphan*/  region_offset; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 size_t BDW ; 
 size_t DCR ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct nvdimm_bus_descriptor*,struct nvdimm*,struct nfit_blk*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct nfit_blk* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nd_blk_region*) ; 
 int /*<<< orphan*/  FUNC7 (struct nd_blk_region*,struct nfit_blk*) ; 
 struct nvdimm* FUNC8 (struct nd_blk_region*) ; 
 int FUNC9 (struct nfit_blk_mmio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nvdimm*) ; 
 struct nfit_mem* FUNC12 (struct nvdimm*) ; 
 struct nd_blk_region* FUNC13 (struct device*) ; 
 struct nvdimm_bus_descriptor* FUNC14 (struct nvdimm_bus*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 

__attribute__((used)) static int FUNC16(struct nvdimm_bus *nvdimm_bus,
		struct device *dev)
{
	struct nvdimm_bus_descriptor *nd_desc = FUNC14(nvdimm_bus);
	struct nd_blk_region *ndbr = FUNC13(dev);
	struct nfit_blk_mmio *mmio;
	struct nfit_blk *nfit_blk;
	struct nfit_mem *nfit_mem;
	struct nvdimm *nvdimm;
	int rc;

	nvdimm = FUNC8(ndbr);
	nfit_mem = FUNC12(nvdimm);
	if (!nfit_mem || !nfit_mem->dcr || !nfit_mem->bdw) {
		FUNC1(dev, "missing%s%s%s\n",
				nfit_mem ? "" : " nfit_mem",
				(nfit_mem && nfit_mem->dcr) ? "" : " dcr",
				(nfit_mem && nfit_mem->bdw) ? "" : " bdw");
		return -ENXIO;
	}

	nfit_blk = FUNC3(dev, sizeof(*nfit_blk), GFP_KERNEL);
	if (!nfit_blk)
		return -ENOMEM;
	FUNC7(ndbr, nfit_blk);
	nfit_blk->nd_region = FUNC15(dev);

	/* map block aperture memory */
	nfit_blk->bdw_offset = nfit_mem->bdw->offset;
	mmio = &nfit_blk->mmio[BDW];
	mmio->addr.base = FUNC5(dev, nfit_mem->spa_bdw->address,
                        nfit_mem->spa_bdw->length, FUNC6(ndbr));
	if (!mmio->addr.base) {
		FUNC1(dev, "%s failed to map bdw\n",
				FUNC11(nvdimm));
		return -ENOMEM;
	}
	mmio->size = nfit_mem->bdw->size;
	mmio->base_offset = nfit_mem->memdev_bdw->region_offset;
	mmio->idt = nfit_mem->idt_bdw;
	mmio->spa = nfit_mem->spa_bdw;
	rc = FUNC9(mmio, nfit_mem->idt_bdw,
			nfit_mem->memdev_bdw->interleave_ways);
	if (rc) {
		FUNC1(dev, "%s failed to init bdw interleave\n",
				FUNC11(nvdimm));
		return rc;
	}

	/* map block control memory */
	nfit_blk->cmd_offset = nfit_mem->dcr->command_offset;
	nfit_blk->stat_offset = nfit_mem->dcr->status_offset;
	mmio = &nfit_blk->mmio[DCR];
	mmio->addr.base = FUNC4(dev, nfit_mem->spa_dcr->address,
			nfit_mem->spa_dcr->length);
	if (!mmio->addr.base) {
		FUNC1(dev, "%s failed to map dcr\n",
				FUNC11(nvdimm));
		return -ENOMEM;
	}
	mmio->size = nfit_mem->dcr->window_size;
	mmio->base_offset = nfit_mem->memdev_dcr->region_offset;
	mmio->idt = nfit_mem->idt_dcr;
	mmio->spa = nfit_mem->spa_dcr;
	rc = FUNC9(mmio, nfit_mem->idt_dcr,
			nfit_mem->memdev_dcr->interleave_ways);
	if (rc) {
		FUNC1(dev, "%s failed to init dcr interleave\n",
				FUNC11(nvdimm));
		return rc;
	}

	rc = FUNC0(nd_desc, nvdimm, nfit_blk);
	if (rc < 0) {
		FUNC1(dev, "%s failed get DIMM flags\n",
				FUNC11(nvdimm));
		return rc;
	}

	if (FUNC10(nfit_blk->nd_region) < 0)
		FUNC2(dev, "unable to guarantee persistence of writes\n");

	if (mmio->line_size == 0)
		return 0;

	if ((u32) nfit_blk->cmd_offset % mmio->line_size
			+ 8 > mmio->line_size) {
		FUNC1(dev, "cmd_offset crosses interleave boundary\n");
		return -ENXIO;
	} else if ((u32) nfit_blk->stat_offset % mmio->line_size
			+ 8 > mmio->line_size) {
		FUNC1(dev, "stat_offset crosses interleave boundary\n");
		return -ENXIO;
	}

	return 0;
}