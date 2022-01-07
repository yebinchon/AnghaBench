
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int provider_name; int attr_groups; int of_node; int module; int ndctl; } ;
struct papr_scm_priv {int blocks; int block_size; TYPE_2__ bus_desc; int bus; int dn; int region; scalar_t__ is_volatile; int nd_set; int res; TYPE_1__* pdev; scalar_t__ nvdimm; } ;
struct nd_region_desc {int size; int numa_node; int target_node; int num_mappings; unsigned long flags; int * res; int * nd_set; struct nd_region_desc* mapping; struct papr_scm_priv* provider_data; int of_node; int attr_groups; scalar_t__ start; scalar_t__ nvdimm; } ;
struct nd_mapping_desc {int size; int numa_node; int target_node; int num_mappings; unsigned long flags; int * res; int * nd_set; struct nd_mapping_desc* mapping; struct papr_scm_priv* provider_data; int of_node; int attr_groups; scalar_t__ start; scalar_t__ nvdimm; } ;
struct device {int of_node; } ;
typedef int ndr_desc ;
typedef int mapping ;
struct TYPE_3__ {struct device dev; int name; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int NDD_ALIASING ;
 int ND_REGION_PAGEMAP ;
 int PAPR_SCM_DIMM_CMD_MASK ;
 int THIS_MODULE ;
 int bus_attr_groups ;
 int dev_err (struct device*,char*,int *,...) ;
 int dev_info (struct device*,char*,int,int) ;
 int dev_to_node (struct device*) ;
 int kfree (int ) ;
 int kstrdup (int ,int ) ;
 int memset (struct nd_region_desc*,int ,int) ;
 scalar_t__ nvdimm_bus_check_dimm_count (int ,int) ;
 int nvdimm_bus_register (int *,TYPE_2__*) ;
 int nvdimm_bus_unregister (int ) ;
 scalar_t__ nvdimm_create (int ,struct papr_scm_priv*,int ,unsigned long,int ,int ,int *) ;
 int nvdimm_pmem_region_create (int ,struct nd_region_desc*) ;
 int nvdimm_volatile_region_create (int ,struct nd_region_desc*) ;
 int papr_scm_dimm_groups ;
 int papr_scm_ndctl ;
 int papr_scm_node (int) ;
 int region_attr_groups ;
 int set_bit (int ,unsigned long*) ;

__attribute__((used)) static int papr_scm_nvdimm_init(struct papr_scm_priv *p)
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
 p->bus_desc.provider_name = kstrdup(p->pdev->name, GFP_KERNEL);

 if (!p->bus_desc.provider_name)
  return -ENOMEM;

 p->bus = nvdimm_bus_register(((void*)0), &p->bus_desc);
 if (!p->bus) {
  dev_err(dev, "Error creating nvdimm bus %pOF\n", p->dn);
  return -ENXIO;
 }

 dimm_flags = 0;
 set_bit(NDD_ALIASING, &dimm_flags);

 p->nvdimm = nvdimm_create(p->bus, p, papr_scm_dimm_groups,
    dimm_flags, PAPR_SCM_DIMM_CMD_MASK, 0, ((void*)0));
 if (!p->nvdimm) {
  dev_err(dev, "Error creating DIMM object for %pOF\n", p->dn);
  goto err;
 }

 if (nvdimm_bus_check_dimm_count(p->bus, 1))
  goto err;



 memset(&mapping, 0, sizeof(mapping));
 mapping.nvdimm = p->nvdimm;
 mapping.start = 0;
 mapping.size = p->blocks * p->block_size;

 memset(&ndr_desc, 0, sizeof(ndr_desc));
 ndr_desc.attr_groups = region_attr_groups;
 target_nid = dev_to_node(&p->pdev->dev);
 online_nid = papr_scm_node(target_nid);
 ndr_desc.numa_node = online_nid;
 ndr_desc.target_node = target_nid;
 ndr_desc.res = &p->res;
 ndr_desc.of_node = p->dn;
 ndr_desc.provider_data = p;
 ndr_desc.mapping = &mapping;
 ndr_desc.num_mappings = 1;
 ndr_desc.nd_set = &p->nd_set;
 set_bit(ND_REGION_PAGEMAP, &ndr_desc.flags);

 if (p->is_volatile)
  p->region = nvdimm_volatile_region_create(p->bus, &ndr_desc);
 else
  p->region = nvdimm_pmem_region_create(p->bus, &ndr_desc);
 if (!p->region) {
  dev_err(dev, "Error registering region %pR from %pOF\n",
    ndr_desc.res, p->dn);
  goto err;
 }
 if (target_nid != online_nid)
  dev_info(dev, "Region registered with target node %d and online node %d",
    target_nid, online_nid);

 return 0;

err: nvdimm_bus_unregister(p->bus);
 kfree(p->bus_desc.provider_name);
 return -ENXIO;
}
