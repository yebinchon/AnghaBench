
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int sata_spd_limit; int sata_spd; } ;
struct ata_device {int horkage; } ;


 int ATA_HORKAGE_1_5_GBPS ;
 int EAGAIN ;
 int ata_dev_info (struct ata_device*,char*,int ) ;
 struct ata_link* ata_dev_phys_link (struct ata_device*) ;
 int sata_scr_valid (struct ata_link*) ;
 int sata_spd_string (int) ;

__attribute__((used)) static int ata_do_link_spd_horkage(struct ata_device *dev)
{
 struct ata_link *plink = ata_dev_phys_link(dev);
 u32 target, target_limit;

 if (!sata_scr_valid(plink))
  return 0;

 if (dev->horkage & ATA_HORKAGE_1_5_GBPS)
  target = 1;
 else
  return 0;

 target_limit = (1 << target) - 1;


 if (plink->sata_spd_limit <= target_limit)
  return 0;

 plink->sata_spd_limit = target_limit;





 if (plink->sata_spd > target) {
  ata_dev_info(dev, "applying link speed limit horkage to %s\n",
        sata_spd_string(target));
  return -EAGAIN;
 }
 return 0;
}
