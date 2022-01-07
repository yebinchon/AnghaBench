
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; int end; } ;
struct TYPE_3__ {unsigned long m64_segsize; int m64_base; scalar_t__ reserved_pe_idx; int total_pe_num; } ;
struct pnv_phb {int opal_id; TYPE_2__* hose; TYPE_1__ ioda; } ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {int global_number; struct resource* mem_resources; } ;


 int EIO ;
 int OPAL_DISABLE_M64 ;
 int OPAL_ENABLE_M64_SPLIT ;
 int OPAL_M64_WINDOW_TYPE ;
 scalar_t__ OPAL_SUCCESS ;
 int PNV_IODA1_M64_NUM ;
 int PNV_IODA1_M64_SEGS ;
 int WARN (int,char*,int,int ) ;
 scalar_t__ opal_pci_phb_mmio_enable (int ,int ,int,int ) ;
 scalar_t__ opal_pci_set_phb_mem_window (int ,int ,int,unsigned long,int ,int) ;
 int pr_warn (char*,scalar_t__,int ,int) ;

__attribute__((used)) static int pnv_ioda1_init_m64(struct pnv_phb *phb)
{
 struct resource *r;
 int index;






 for (index = 0; index < PNV_IODA1_M64_NUM; index++) {
  unsigned long base, segsz = phb->ioda.m64_segsize;
  int64_t rc;

  base = phb->ioda.m64_base +
         index * PNV_IODA1_M64_SEGS * segsz;
  rc = opal_pci_set_phb_mem_window(phb->opal_id,
    OPAL_M64_WINDOW_TYPE, index, base, 0,
    PNV_IODA1_M64_SEGS * segsz);
  if (rc != OPAL_SUCCESS) {
   pr_warn("  Error %lld setting M64 PHB#%x-BAR#%d\n",
    rc, phb->hose->global_number, index);
   goto fail;
  }

  rc = opal_pci_phb_mmio_enable(phb->opal_id,
    OPAL_M64_WINDOW_TYPE, index,
    OPAL_ENABLE_M64_SPLIT);
  if (rc != OPAL_SUCCESS) {
   pr_warn("  Error %lld enabling M64 PHB#%x-BAR#%d\n",
    rc, phb->hose->global_number, index);
   goto fail;
  }
 }





 r = &phb->hose->mem_resources[1];
 if (phb->ioda.reserved_pe_idx == 0)
  r->start += (2 * phb->ioda.m64_segsize);
 else if (phb->ioda.reserved_pe_idx == (phb->ioda.total_pe_num - 1))
  r->end -= (2 * phb->ioda.m64_segsize);
 else
  WARN(1, "Wrong reserved PE#%x on PHB#%x\n",
       phb->ioda.reserved_pe_idx, phb->hose->global_number);

 return 0;

fail:
 for ( ; index >= 0; index--)
  opal_pci_phb_mmio_enable(phb->opal_id,
   OPAL_M64_WINDOW_TYPE, index, OPAL_DISABLE_M64);

 return -EIO;
}
