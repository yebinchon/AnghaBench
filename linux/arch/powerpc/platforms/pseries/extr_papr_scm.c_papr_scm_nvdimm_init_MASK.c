#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  provider_name; int /*<<< orphan*/  attr_groups; int /*<<< orphan*/  of_node; int /*<<< orphan*/  module; int /*<<< orphan*/  ndctl; } ;
struct papr_scm_priv {int blocks; int block_size; TYPE_2__ bus_desc; int /*<<< orphan*/  bus; int /*<<< orphan*/  dn; int /*<<< orphan*/  region; scalar_t__ is_volatile; int /*<<< orphan*/  nd_set; int /*<<< orphan*/  res; TYPE_1__* pdev; scalar_t__ nvdimm; } ;
struct nd_region_desc {int size; int numa_node; int target_node; int num_mappings; unsigned long flags; int /*<<< orphan*/ * res; int /*<<< orphan*/ * nd_set; struct nd_region_desc* mapping; struct papr_scm_priv* provider_data; int /*<<< orphan*/  of_node; int /*<<< orphan*/  attr_groups; scalar_t__ start; scalar_t__ nvdimm; } ;
struct nd_mapping_desc {int size; int numa_node; int target_node; int num_mappings; unsigned long flags; int /*<<< orphan*/ * res; int /*<<< orphan*/ * nd_set; struct nd_mapping_desc* mapping; struct papr_scm_priv* provider_data; int /*<<< orphan*/  of_node; int /*<<< orphan*/  attr_groups; scalar_t__ start; scalar_t__ nvdimm; } ;
struct device {int /*<<< orphan*/  of_node; } ;
typedef  int /*<<< orphan*/  ndr_desc ;
typedef  int /*<<< orphan*/  mapping ;
struct TYPE_3__ {struct device dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NDD_ALIASING ; 
 int /*<<< orphan*/  ND_REGION_PAGEMAP ; 
 int /*<<< orphan*/  PAPR_SCM_DIMM_CMD_MASK ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  bus_attr_groups ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nd_region_desc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct papr_scm_priv*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct nd_region_desc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct nd_region_desc*) ; 
 int /*<<< orphan*/  papr_scm_dimm_groups ; 
 int /*<<< orphan*/  papr_scm_ndctl ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  region_attr_groups ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC14(struct papr_scm_priv *p)
{
	struct device *dev = &p->pdev->dev;
	struct nd_mapping_desc mapping;
	struct nd_region_desc ndr_desc;
	unsigned long dimm_flags;
	int target_nid, online_nid;

	p->bus_desc.ndctl = papr_scm_ndctl;
	p->bus_desc.module = THIS_MODULE;
	p->bus_desc.of_node = p->pdev->dev.of_node;
	p->bus_desc.attr_groups = bus_attr_groups;
	p->bus_desc.provider_name = FUNC4(p->pdev->name, GFP_KERNEL);

	if (!p->bus_desc.provider_name)
		return -ENOMEM;

	p->bus = FUNC7(NULL, &p->bus_desc);
	if (!p->bus) {
		FUNC0(dev, "Error creating nvdimm bus %pOF\n", &p->dn);
		return -ENXIO;
	}

	dimm_flags = 0;
	FUNC13(NDD_ALIASING, &dimm_flags);

	p->nvdimm = FUNC9(p->bus, p, papr_scm_dimm_groups,
				dimm_flags, PAPR_SCM_DIMM_CMD_MASK, 0, NULL);
	if (!p->nvdimm) {
		FUNC0(dev, "Error creating DIMM object for %pOF\n", &p->dn);
		goto err;
	}

	if (FUNC6(p->bus, 1))
		goto err;

	/* now add the region */

	FUNC5(&mapping, 0, sizeof(mapping));
	mapping.nvdimm = p->nvdimm;
	mapping.start = 0;
	mapping.size = p->blocks * p->block_size; // XXX: potential overflow?

	FUNC5(&ndr_desc, 0, sizeof(ndr_desc));
	ndr_desc.attr_groups = region_attr_groups;
	target_nid = FUNC2(&p->pdev->dev);
	online_nid = FUNC12(target_nid);
	ndr_desc.numa_node = online_nid;
	ndr_desc.target_node = target_nid;
	ndr_desc.res = &p->res;
	ndr_desc.of_node = p->dn;
	ndr_desc.provider_data = p;
	ndr_desc.mapping = &mapping;
	ndr_desc.num_mappings = 1;
	ndr_desc.nd_set = &p->nd_set;
	FUNC13(ND_REGION_PAGEMAP, &ndr_desc.flags);

	if (p->is_volatile)
		p->region = FUNC11(p->bus, &ndr_desc);
	else
		p->region = FUNC10(p->bus, &ndr_desc);
	if (!p->region) {
		FUNC0(dev, "Error registering region %pR from %pOF\n",
				ndr_desc.res, p->dn);
		goto err;
	}
	if (target_nid != online_nid)
		FUNC1(dev, "Region registered with target node %d and online node %d",
			 target_nid, online_nid);

	return 0;

err:	FUNC8(p->bus);
	FUNC3(p->bus_desc.provider_name);
	return -ENXIO;
}