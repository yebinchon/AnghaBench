
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {scalar_t__ class; int id; } ;
typedef int model_num ;


 scalar_t__ ATA_DEV_ATA ;
 int ATA_ID_PROD ;
 int ATA_ID_PROD_LEN ;
 unsigned long ATA_MASK_MWDMA ;
 unsigned long ATA_MASK_UDMA ;
 int ata_id_c_string (int ,char*,int ,int) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static unsigned long ali_20_filter(struct ata_device *adev, unsigned long mask)
{
 char model_num[ATA_ID_PROD_LEN + 1];

 if (adev->class != ATA_DEV_ATA)
  mask &= ~(ATA_MASK_MWDMA | ATA_MASK_UDMA);
 ata_id_c_string(adev->id, model_num, ATA_ID_PROD, sizeof(model_num));
 if (strstr(model_num, "WDC"))
  return mask &= ~ATA_MASK_UDMA;
 return mask;
}
