
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sff_check_status ) (struct ata_port*) ;} ;


 int ATA_BUSY ;
 int DIV_ROUND_UP (unsigned long,int) ;
 int EBUSY ;
 int ENODEV ;
 unsigned long ata_deadline (unsigned long,unsigned long) ;
 int ata_msleep (struct ata_port*,int) ;
 int ata_port_err (struct ata_port*,char*,int ,int) ;
 int ata_port_warn (struct ata_port*,char*,int) ;
 int ata_sff_busy_wait (struct ata_port*,int,int) ;
 unsigned long jiffies ;
 int stub1 (struct ata_port*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int ata_sff_busy_sleep(struct ata_port *ap,
         unsigned long tmout_pat, unsigned long tmout)
{
 unsigned long timer_start, timeout;
 u8 status;

 status = ata_sff_busy_wait(ap, ATA_BUSY, 300);
 timer_start = jiffies;
 timeout = ata_deadline(timer_start, tmout_pat);
 while (status != 0xff && (status & ATA_BUSY) &&
        time_before(jiffies, timeout)) {
  ata_msleep(ap, 50);
  status = ata_sff_busy_wait(ap, ATA_BUSY, 3);
 }

 if (status != 0xff && (status & ATA_BUSY))
  ata_port_warn(ap,
         "port is slow to respond, please be patient (Status 0x%x)\n",
         status);

 timeout = ata_deadline(timer_start, tmout);
 while (status != 0xff && (status & ATA_BUSY) &&
        time_before(jiffies, timeout)) {
  ata_msleep(ap, 50);
  status = ap->ops->sff_check_status(ap);
 }

 if (status == 0xff)
  return -ENODEV;

 if (status & ATA_BUSY) {
  ata_port_err(ap,
        "port failed to respond (%lu secs, Status 0x%x)\n",
        DIV_ROUND_UP(tmout, 1000), status);
  return -EBUSY;
 }

 return 0;
}
