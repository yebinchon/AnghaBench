
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ata_taskfile {int flags; int feature; int command; scalar_t__ nsect; int protocol; } ;
struct ata_queued_cmd {struct ata_device* dev; struct ata_taskfile tf; } ;
struct ata_device {int id; } ;


 int ATA_CMD_SET_FEATURES ;
 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int CACHE_MPAGE_LEN ;
 int EINVAL ;
 int SETFEATURES_WC_OFF ;
 int SETFEATURES_WC_ON ;
 int ata_msense_caching (int ,int*,int) ;

__attribute__((used)) static int ata_mselect_caching(struct ata_queued_cmd *qc,
          const u8 *buf, int len, u16 *fp)
{
 struct ata_taskfile *tf = &qc->tf;
 struct ata_device *dev = qc->dev;
 u8 mpage[CACHE_MPAGE_LEN];
 u8 wce;
 int i;






 if (len != CACHE_MPAGE_LEN - 2) {
  if (len < CACHE_MPAGE_LEN - 2)
   *fp = len;
  else
   *fp = CACHE_MPAGE_LEN - 2;
  return -EINVAL;
 }

 wce = buf[0] & (1 << 2);




 ata_msense_caching(dev->id, mpage, 0);
 for (i = 0; i < CACHE_MPAGE_LEN - 2; i++) {
  if (i == 0)
   continue;
  if (mpage[i + 2] != buf[i]) {
   *fp = i;
   return -EINVAL;
  }
 }

 tf->flags |= ATA_TFLAG_DEVICE | ATA_TFLAG_ISADDR;
 tf->protocol = ATA_PROT_NODATA;
 tf->nsect = 0;
 tf->command = ATA_CMD_SET_FEATURES;
 tf->feature = wce ? SETFEATURES_WC_ON : SETFEATURES_WC_OFF;
 return 0;
}
