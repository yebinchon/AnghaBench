
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nfit_blk_mmio {int size; } ;
struct nfit_blk {struct nd_region* nd_region; struct nfit_blk_mmio* mmio; } ;
struct nd_region {int dummy; } ;
struct nd_blk_region {int dummy; } ;
typedef scalar_t__ resource_size_t ;


 size_t BDW ;
 int acpi_nfit_blk_single_io (struct nfit_blk*,scalar_t__,void*,scalar_t__,int,unsigned int) ;
 scalar_t__ min (scalar_t__,int ) ;
 struct nfit_blk* nd_blk_region_provider_data (struct nd_blk_region*) ;
 unsigned int nd_region_acquire_lane (struct nd_region*) ;
 int nd_region_release_lane (struct nd_region*,unsigned int) ;

__attribute__((used)) static int acpi_nfit_blk_region_do_io(struct nd_blk_region *ndbr,
  resource_size_t dpa, void *iobuf, u64 len, int rw)
{
 struct nfit_blk *nfit_blk = nd_blk_region_provider_data(ndbr);
 struct nfit_blk_mmio *mmio = &nfit_blk->mmio[BDW];
 struct nd_region *nd_region = nfit_blk->nd_region;
 unsigned int lane, copied = 0;
 int rc = 0;

 lane = nd_region_acquire_lane(nd_region);
 while (len) {
  u64 c = min(len, mmio->size);

  rc = acpi_nfit_blk_single_io(nfit_blk, dpa + copied,
    iobuf + copied, c, rw, lane);
  if (rc)
   break;

  copied += c;
  len -= c;
 }
 nd_region_release_lane(nd_region, lane);

 return rc;
}
