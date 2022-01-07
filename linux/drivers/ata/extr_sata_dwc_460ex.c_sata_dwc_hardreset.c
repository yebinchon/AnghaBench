
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sata_dwc_device {TYPE_1__* sata_dwc_regs; } ;
struct ata_link {int ap; } ;
struct TYPE_2__ {int dbtsr; int dmacr; } ;


 int AHB_DMA_BRST_DFLT ;
 struct sata_dwc_device* HSDEV_FROM_AP (int ) ;
 int SATA_DWC_DBTSR_MRD (int ) ;
 int SATA_DWC_DBTSR_MWR (int ) ;
 int SATA_DWC_DMACR_TXRXCH_CLEAR ;
 int sata_dwc_enable_interrupts (struct sata_dwc_device*) ;
 int sata_dwc_writel (int *,int) ;
 int sata_sff_hardreset (struct ata_link*,unsigned int*,unsigned long) ;

__attribute__((used)) static int sata_dwc_hardreset(struct ata_link *link, unsigned int *class,
         unsigned long deadline)
{
 struct sata_dwc_device *hsdev = HSDEV_FROM_AP(link->ap);
 int ret;

 ret = sata_sff_hardreset(link, class, deadline);

 sata_dwc_enable_interrupts(hsdev);


 sata_dwc_writel(&hsdev->sata_dwc_regs->dmacr,
   SATA_DWC_DMACR_TXRXCH_CLEAR);


 sata_dwc_writel(&hsdev->sata_dwc_regs->dbtsr,
   SATA_DWC_DBTSR_MWR(AHB_DMA_BRST_DFLT) |
   SATA_DWC_DBTSR_MRD(AHB_DMA_BRST_DFLT));

 return ret;
}
