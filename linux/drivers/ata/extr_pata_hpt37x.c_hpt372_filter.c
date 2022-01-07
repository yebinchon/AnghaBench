
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int id; } ;


 int ATA_MASK_MWDMA ;
 int ATA_SHIFT_UDMA ;
 scalar_t__ ata_id_is_sata (int ) ;

__attribute__((used)) static unsigned long hpt372_filter(struct ata_device *adev, unsigned long mask)
{
 if (ata_id_is_sata(adev->id))
  mask &= ~((0xE << ATA_SHIFT_UDMA) | ATA_MASK_MWDMA);

 return mask;
}
