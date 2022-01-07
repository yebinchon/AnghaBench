
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct pnv_ioda_pe {int pe_number; int tce_bypass_enabled; int tce_bypass_base; TYPE_1__* phb; } ;
typedef int phys_addr_t ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int opal_id; } ;


 int memblock_end_of_DRAM () ;
 scalar_t__ opal_pci_map_pe_dma_window_real (int ,int,int,int ,int ) ;
 int pe_err (struct pnv_ioda_pe*,char*,scalar_t__) ;
 int pe_info (struct pnv_ioda_pe*,char*,char*) ;
 int roundup_pow_of_two (int ) ;

__attribute__((used)) static void pnv_pci_ioda2_set_bypass(struct pnv_ioda_pe *pe, bool enable)
{
 uint16_t window_id = (pe->pe_number << 1 ) + 1;
 int64_t rc;

 pe_info(pe, "%sabling 64-bit DMA bypass\n", enable ? "En" : "Dis");
 if (enable) {
  phys_addr_t top = memblock_end_of_DRAM();

  top = roundup_pow_of_two(top);
  rc = opal_pci_map_pe_dma_window_real(pe->phb->opal_id,
           pe->pe_number,
           window_id,
           pe->tce_bypass_base,
           top);
 } else {
  rc = opal_pci_map_pe_dma_window_real(pe->phb->opal_id,
           pe->pe_number,
           window_id,
           pe->tce_bypass_base,
           0);
 }
 if (rc)
  pe_err(pe, "OPAL error %lld configuring bypass window\n", rc);
 else
  pe->tce_bypass_enabled = enable;
}
