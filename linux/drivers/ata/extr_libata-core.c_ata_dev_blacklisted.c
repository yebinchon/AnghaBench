
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int id; } ;
struct ata_blacklist_entry {unsigned long horkage; int * model_rev; int * model_num; } ;
typedef int model_rev ;
typedef int model_num ;


 int ATA_ID_FW_REV ;
 int ATA_ID_FW_REV_LEN ;
 int ATA_ID_PROD ;
 int ATA_ID_PROD_LEN ;
 struct ata_blacklist_entry* ata_device_blacklist ;
 int ata_id_c_string (int ,unsigned char*,int ,int) ;
 scalar_t__ glob_match (int *,unsigned char*) ;

__attribute__((used)) static unsigned long ata_dev_blacklisted(const struct ata_device *dev)
{
 unsigned char model_num[ATA_ID_PROD_LEN + 1];
 unsigned char model_rev[ATA_ID_FW_REV_LEN + 1];
 const struct ata_blacklist_entry *ad = ata_device_blacklist;

 ata_id_c_string(dev->id, model_num, ATA_ID_PROD, sizeof(model_num));
 ata_id_c_string(dev->id, model_rev, ATA_ID_FW_REV, sizeof(model_rev));

 while (ad->model_num) {
  if (glob_match(ad->model_num, model_num)) {
   if (ad->model_rev == ((void*)0))
    return ad->horkage;
   if (glob_match(ad->model_rev, model_rev))
    return ad->horkage;
  }
  ad++;
 }
 return 0;
}
