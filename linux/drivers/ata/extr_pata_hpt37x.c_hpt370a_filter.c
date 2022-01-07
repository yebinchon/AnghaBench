
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {scalar_t__ class; } ;


 scalar_t__ ATA_DEV_ATA ;
 int ATA_SHIFT_UDMA ;
 int bad_ata100_5 ;
 scalar_t__ hpt_dma_blacklisted (struct ata_device*,char*,int ) ;

__attribute__((used)) static unsigned long hpt370a_filter(struct ata_device *adev, unsigned long mask)
{
 if (adev->class == ATA_DEV_ATA) {
  if (hpt_dma_blacklisted(adev, "UDMA100", bad_ata100_5))
   mask &= ~(0xE0 << ATA_SHIFT_UDMA);
 }
 return mask;
}
