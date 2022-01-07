
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int* id; int max_sectors; int horkage; } ;
typedef int model_num ;


 int ATA_HORKAGE_BROKEN_HPA ;
 int ATA_HORKAGE_DIAGNOSTIC ;
 int ATA_ID_PROD ;
 int ATA_ID_PROD_LEN ;
 int ata_dev_info (struct ata_device*,char*,char*,int) ;
 int ata_id_c_string (int*,unsigned char*,int ,int) ;
 int pr_cont (char*,...) ;
 scalar_t__ strstr (unsigned char*,char*) ;

__attribute__((used)) static void it821x_dev_config(struct ata_device *adev)
{
 unsigned char model_num[ATA_ID_PROD_LEN + 1];

 ata_id_c_string(adev->id, model_num, ATA_ID_PROD, sizeof(model_num));

 if (adev->max_sectors > 255)
  adev->max_sectors = 255;

 if (strstr(model_num, "Integrated Technology Express")) {

  ata_dev_info(adev, "%sRAID%d volume",
        adev->id[147] ? "Bootable " : "",
        adev->id[129]);
  if (adev->id[129] != 1)
   pr_cont("(%dK stripe)", adev->id[146]);
  pr_cont("\n");
 }


 adev->horkage &= ~ATA_HORKAGE_DIAGNOSTIC;

 adev->horkage |= ATA_HORKAGE_BROKEN_HPA;
}
