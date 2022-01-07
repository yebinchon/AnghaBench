
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {int (* ndctl ) (struct nvdimm_bus_descriptor*,struct nvdimm*,int ,struct nd_cmd_dimm_flags*,int,int *) ;} ;
struct nvdimm {int dummy; } ;
struct nfit_blk {int dimm_flags; } ;
struct nd_cmd_dimm_flags {scalar_t__ status; int flags; } ;
typedef int flags ;


 int ENOTTY ;
 int ENXIO ;
 int ND_CMD_DIMM_FLAGS ;
 int NFIT_BLK_DCR_LATCH ;
 int NFIT_BLK_READ_FLUSH ;
 int memset (struct nd_cmd_dimm_flags*,int ,int) ;
 int stub1 (struct nvdimm_bus_descriptor*,struct nvdimm*,int ,struct nd_cmd_dimm_flags*,int,int *) ;

__attribute__((used)) static int acpi_nfit_blk_get_flags(struct nvdimm_bus_descriptor *nd_desc,
  struct nvdimm *nvdimm, struct nfit_blk *nfit_blk)
{
 struct nd_cmd_dimm_flags flags;
 int rc;

 memset(&flags, 0, sizeof(flags));
 rc = nd_desc->ndctl(nd_desc, nvdimm, ND_CMD_DIMM_FLAGS, &flags,
   sizeof(flags), ((void*)0));

 if (rc >= 0 && flags.status == 0)
  nfit_blk->dimm_flags = flags.flags;
 else if (rc == -ENOTTY) {

  nfit_blk->dimm_flags = NFIT_BLK_DCR_LATCH | NFIT_BLK_READ_FLUSH;
  rc = 0;
 } else
  rc = -ENXIO;

 return rc;
}
