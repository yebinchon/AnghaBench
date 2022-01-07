
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ata_device {int* id; } ;


 size_t ATA_ID_EIDE_PIO ;
 size_t ATA_ID_FIELD_VALID ;
 int ATA_SHIFT_PIO ;

__attribute__((used)) static u32 ata_pio_mask_no_iordy(const struct ata_device *adev)
{

 if (adev->id[ATA_ID_FIELD_VALID] & 2) {
  u16 pio = adev->id[ATA_ID_EIDE_PIO];

  if (pio) {

   if (pio > 240)
    return 3 << ATA_SHIFT_PIO;
   return 7 << ATA_SHIFT_PIO;
  }
 }
 return 3 << ATA_SHIFT_PIO;
}
