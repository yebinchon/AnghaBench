
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_link {TYPE_1__* ap; } ;
struct ata_device {int flags; int spdn_cnt; scalar_t__ xfer_shift; scalar_t__ class; int ering; } ;
struct TYPE_2__ {scalar_t__ cbl; } ;


 scalar_t__ ATA_CBL_SATA ;
 scalar_t__ ATA_DEV_ATAPI ;
 int ATA_DFLAG_NCQ ;
 int ATA_DFLAG_NCQ_OFF ;
 int ATA_DFLAG_PIO ;


 int ATA_DNXFER_FORCE_PIO ;


 unsigned int ATA_EH_RESET ;
 unsigned int ATA_EH_SPDN_FALLBACK_TO_PIO ;
 unsigned int ATA_EH_SPDN_KEEP_ERRORS ;
 unsigned int ATA_EH_SPDN_NCQ_OFF ;
 unsigned int ATA_EH_SPDN_SPEED_DOWN ;
 scalar_t__ ATA_SHIFT_PIO ;
 struct ata_link* ata_dev_phys_link (struct ata_device*) ;
 int ata_dev_warn (struct ata_device*,char*) ;
 scalar_t__ ata_down_xfermask_limit (struct ata_device*,int) ;
 scalar_t__ ata_eh_categorize_error (unsigned int,unsigned int,int*) ;
 unsigned int ata_eh_speed_down_verdict (struct ata_device*) ;
 int ata_ering_clear (int *) ;
 int ata_ering_record (int *,unsigned int,unsigned int) ;
 scalar_t__ sata_down_spd_limit (struct ata_link*,int ) ;

__attribute__((used)) static unsigned int ata_eh_speed_down(struct ata_device *dev,
    unsigned int eflags, unsigned int err_mask)
{
 struct ata_link *link = ata_dev_phys_link(dev);
 int xfer_ok = 0;
 unsigned int verdict;
 unsigned int action = 0;


 if (ata_eh_categorize_error(eflags, err_mask, &xfer_ok) == 0)
  return 0;


 ata_ering_record(&dev->ering, eflags, err_mask);
 verdict = ata_eh_speed_down_verdict(dev);


 if ((verdict & ATA_EH_SPDN_NCQ_OFF) &&
     (dev->flags & (ATA_DFLAG_PIO | ATA_DFLAG_NCQ |
      ATA_DFLAG_NCQ_OFF)) == ATA_DFLAG_NCQ) {
  dev->flags |= ATA_DFLAG_NCQ_OFF;
  ata_dev_warn(dev, "NCQ disabled due to excessive errors\n");
  goto done;
 }


 if (verdict & ATA_EH_SPDN_SPEED_DOWN) {

  if (sata_down_spd_limit(link, 0) == 0) {
   action |= ATA_EH_RESET;
   goto done;
  }


  if (dev->spdn_cnt < 2) {
   static const int dma_dnxfer_sel[] =
    { 130, 131 };
   static const int pio_dnxfer_sel[] =
    { 128, 129 };
   int sel;

   if (dev->xfer_shift != ATA_SHIFT_PIO)
    sel = dma_dnxfer_sel[dev->spdn_cnt];
   else
    sel = pio_dnxfer_sel[dev->spdn_cnt];

   dev->spdn_cnt++;

   if (ata_down_xfermask_limit(dev, sel) == 0) {
    action |= ATA_EH_RESET;
    goto done;
   }
  }
 }




 if ((verdict & ATA_EH_SPDN_FALLBACK_TO_PIO) && (dev->spdn_cnt >= 2) &&
     (link->ap->cbl != ATA_CBL_SATA || dev->class == ATA_DEV_ATAPI) &&
     (dev->xfer_shift != ATA_SHIFT_PIO)) {
  if (ata_down_xfermask_limit(dev, ATA_DNXFER_FORCE_PIO) == 0) {
   dev->spdn_cnt = 0;
   action |= ATA_EH_RESET;
   goto done;
  }
 }

 return 0;
 done:

 if (!(verdict & ATA_EH_SPDN_KEEP_ERRORS))
  ata_ering_clear(&dev->ering);
 return action;
}
