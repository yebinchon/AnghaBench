
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; int end; } ;
struct TYPE_4__ {scalar_t__ reserved_pe_idx; int m64_segsize; int total_pe_num; int m64_bar_idx; int m64_size; int m64_base; } ;
struct pnv_phb {TYPE_2__ ioda; int opal_id; TYPE_1__* hose; } ;
typedef scalar_t__ s64 ;
struct TYPE_3__ {struct resource* mem_resources; } ;


 int EIO ;
 int OPAL_DISABLE_M64 ;
 int OPAL_ENABLE_M64_SPLIT ;
 int OPAL_M64_WINDOW_TYPE ;
 scalar_t__ OPAL_SUCCESS ;
 scalar_t__ opal_pci_phb_mmio_enable (int ,int ,int ,int ) ;
 scalar_t__ opal_pci_set_phb_mem_window (int ,int ,int ,int ,int ,int ) ;
 int pr_warn (char*,scalar_t__,...) ;

__attribute__((used)) static int pnv_ioda2_init_m64(struct pnv_phb *phb)
{
 const char *desc;
 struct resource *r;
 s64 rc;


 rc = opal_pci_set_phb_mem_window(phb->opal_id,
      OPAL_M64_WINDOW_TYPE,
      phb->ioda.m64_bar_idx,
      phb->ioda.m64_base,
      0,
      phb->ioda.m64_size);
 if (rc != OPAL_SUCCESS) {
  desc = "configuring";
  goto fail;
 }


 rc = opal_pci_phb_mmio_enable(phb->opal_id,
          OPAL_M64_WINDOW_TYPE,
          phb->ioda.m64_bar_idx,
          OPAL_ENABLE_M64_SPLIT);
 if (rc != OPAL_SUCCESS) {
  desc = "enabling";
  goto fail;
 }





 r = &phb->hose->mem_resources[1];
 if (phb->ioda.reserved_pe_idx == 0)
  r->start += (2 * phb->ioda.m64_segsize);
 else if (phb->ioda.reserved_pe_idx == (phb->ioda.total_pe_num - 1))
  r->end -= (2 * phb->ioda.m64_segsize);
 else
  pr_warn("  Cannot strip M64 segment for reserved PE#%x\n",
   phb->ioda.reserved_pe_idx);

 return 0;

fail:
 pr_warn("  Failure %lld %s M64 BAR#%d\n",
  rc, desc, phb->ioda.m64_bar_idx);
 opal_pci_phb_mmio_enable(phb->opal_id,
     OPAL_M64_WINDOW_TYPE,
     phb->ioda.m64_bar_idx,
     OPAL_DISABLE_M64);
 return -EIO;
}
