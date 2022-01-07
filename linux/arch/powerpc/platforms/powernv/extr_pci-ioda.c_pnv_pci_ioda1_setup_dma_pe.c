
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int dma32_count; scalar_t__* dma32_segmap; } ;
struct pnv_phb {TYPE_2__* hose; TYPE_1__ ioda; int opal_id; } ;
struct TYPE_8__ {int tce32_start; int tce32_size; } ;
struct pnv_ioda_pe {scalar_t__ pe_number; int flags; TYPE_3__ table_group; int pbus; } ;
struct page {int dummy; } ;
struct iommu_table {int it_offset; int it_page_shift; int it_size; int * it_ops; } ;
typedef scalar_t__ int64_t ;
struct TYPE_7__ {int node; int global_number; int bus; } ;


 int GFP_KERNEL ;
 scalar_t__ IODA_INVALID_PE ;
 int IOMMU_PAGE_SHIFT_4K ;
 int IOMMU_PAGE_SIZE_4K ;
 unsigned int PNV_IODA1_DMA32_SEGSIZE ;
 int PNV_IODA_PE_BUS ;
 int PNV_IODA_PE_BUS_ALL ;
 scalar_t__ WARN_ON (int) ;
 int __free_pages (struct page*,int ) ;
 scalar_t__ __pa (void*) ;
 struct page* alloc_pages_node (int ,int ,int ) ;
 int get_order (unsigned int) ;
 int iommu_init_table (struct iommu_table*,int ,int ,int ) ;
 int iommu_register_group (TYPE_3__*,int ,scalar_t__) ;
 int iommu_tce_table_put (struct iommu_table*) ;
 int memset (void*,int ,unsigned int) ;
 scalar_t__ opal_pci_map_pe_dma_window (int ,scalar_t__,unsigned int,int,scalar_t__,unsigned int,int ) ;
 void* page_address (struct page*) ;
 int pci_walk_bus (int ,int ,unsigned int*) ;
 int pe_err (struct pnv_ioda_pe*,char*,...) ;
 int pe_info (struct pnv_ioda_pe*,char*,unsigned int,unsigned int,...) ;
 int pe_warn (struct pnv_ioda_pe*,char*) ;
 int pnv_ioda1_iommu_ops ;
 int pnv_ioda_setup_bus_dma (struct pnv_ioda_pe*,int ) ;
 int pnv_pci_ioda_dev_dma_weight ;
 unsigned int pnv_pci_ioda_pe_dma_weight (struct pnv_ioda_pe*) ;
 int pnv_pci_link_table_and_group (int ,int ,struct iommu_table*,TYPE_3__*) ;
 int pnv_pci_setup_iommu_table (struct iommu_table*,void*,unsigned int,unsigned int,int) ;
 struct iommu_table* pnv_pci_table_alloc (int ) ;
 int pnv_pci_unlink_table_and_group (struct iommu_table*,TYPE_3__*) ;

__attribute__((used)) static void pnv_pci_ioda1_setup_dma_pe(struct pnv_phb *phb,
           struct pnv_ioda_pe *pe)
{

 struct page *tce_mem = ((void*)0);
 struct iommu_table *tbl;
 unsigned int weight, total_weight = 0;
 unsigned int tce32_segsz, base, segs, avail, i;
 int64_t rc;
 void *addr;




 weight = pnv_pci_ioda_pe_dma_weight(pe);
 if (!weight)
  return;

 pci_walk_bus(phb->hose->bus, pnv_pci_ioda_dev_dma_weight,
       &total_weight);
 segs = (weight * phb->ioda.dma32_count) / total_weight;
 if (!segs)
  segs = 1;







 do {
  for (base = 0; base <= phb->ioda.dma32_count - segs; base++) {
   for (avail = 0, i = base; i < base + segs; i++) {
    if (phb->ioda.dma32_segmap[i] ==
        IODA_INVALID_PE)
     avail++;
   }

   if (avail == segs)
    goto found;
  }
 } while (--segs);

 if (!segs) {
  pe_warn(pe, "No available DMA32 segments\n");
  return;
 }

found:
 tbl = pnv_pci_table_alloc(phb->hose->node);
 if (WARN_ON(!tbl))
  return;

 iommu_register_group(&pe->table_group, phb->hose->global_number,
   pe->pe_number);
 pnv_pci_link_table_and_group(phb->hose->node, 0, tbl, &pe->table_group);


 pe_info(pe, "DMA weight %d (%d), assigned (%d) %d DMA32 segments\n",
  weight, total_weight, base, segs);
 pe_info(pe, " Setting up 32-bit TCE table at %08x..%08x\n",
  base * PNV_IODA1_DMA32_SEGSIZE,
  (base + segs) * PNV_IODA1_DMA32_SEGSIZE - 1);
 tce32_segsz = PNV_IODA1_DMA32_SEGSIZE >> (IOMMU_PAGE_SHIFT_4K - 3);
 tce_mem = alloc_pages_node(phb->hose->node, GFP_KERNEL,
       get_order(tce32_segsz * segs));
 if (!tce_mem) {
  pe_err(pe, " Failed to allocate a 32-bit TCE memory\n");
  goto fail;
 }
 addr = page_address(tce_mem);
 memset(addr, 0, tce32_segsz * segs);


 for (i = 0; i < segs; i++) {
  rc = opal_pci_map_pe_dma_window(phb->opal_id,
           pe->pe_number,
           base + i, 1,
           __pa(addr) + tce32_segsz * i,
           tce32_segsz, IOMMU_PAGE_SIZE_4K);
  if (rc) {
   pe_err(pe, " Failed to configure 32-bit TCE table, err %lld\n",
          rc);
   goto fail;
  }
 }


 for (i = base; i < base + segs; i++)
  phb->ioda.dma32_segmap[i] = pe->pe_number;


 pnv_pci_setup_iommu_table(tbl, addr, tce32_segsz * segs,
      base * PNV_IODA1_DMA32_SEGSIZE,
      IOMMU_PAGE_SHIFT_4K);

 tbl->it_ops = &pnv_ioda1_iommu_ops;
 pe->table_group.tce32_start = tbl->it_offset << tbl->it_page_shift;
 pe->table_group.tce32_size = tbl->it_size << tbl->it_page_shift;
 iommu_init_table(tbl, phb->hose->node, 0, 0);

 if (pe->flags & (PNV_IODA_PE_BUS | PNV_IODA_PE_BUS_ALL))
  pnv_ioda_setup_bus_dma(pe, pe->pbus);

 return;
 fail:

 if (tce_mem)
  __free_pages(tce_mem, get_order(tce32_segsz * segs));
 if (tbl) {
  pnv_pci_unlink_table_and_group(tbl, &pe->table_group);
  iommu_tce_table_put(tbl);
 }
}
