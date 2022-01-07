
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ata_queued_cmd {struct ata_device* dev; } ;
struct ata_device {int flags; } ;


 int ATA_DFLAG_D_SENSE ;
 int CONTROL_MPAGE_LEN ;
 int EINVAL ;
 int ata_msense_control (struct ata_device*,int*,int) ;

__attribute__((used)) static int ata_mselect_control(struct ata_queued_cmd *qc,
          const u8 *buf, int len, u16 *fp)
{
 struct ata_device *dev = qc->dev;
 u8 mpage[CONTROL_MPAGE_LEN];
 u8 d_sense;
 int i;






 if (len != CONTROL_MPAGE_LEN - 2) {
  if (len < CONTROL_MPAGE_LEN - 2)
   *fp = len;
  else
   *fp = CONTROL_MPAGE_LEN - 2;
  return -EINVAL;
 }

 d_sense = buf[0] & (1 << 2);




 ata_msense_control(dev, mpage, 0);
 for (i = 0; i < CONTROL_MPAGE_LEN - 2; i++) {
  if (i == 0)
   continue;
  if (mpage[2 + i] != buf[i]) {
   *fp = i;
   return -EINVAL;
  }
 }
 if (d_sense & (1 << 2))
  dev->flags |= ATA_DFLAG_D_SENSE;
 else
  dev->flags &= ~ATA_DFLAG_D_SENSE;
 return 0;
}
