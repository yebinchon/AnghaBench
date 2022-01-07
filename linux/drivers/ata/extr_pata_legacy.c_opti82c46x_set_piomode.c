
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct ata_timing {int setup; int recover; int active; } ;
struct TYPE_3__ {int nsect_addr; int lbal_addr; int data_addr; int device_addr; int error_addr; } ;
struct ata_port {TYPE_2__* host; TYPE_1__ ioaddr; } ;
struct ata_device {int devno; int pio_mode; } ;
struct TYPE_4__ {struct ata_port* private_data; } ;


 int ATA_TIMING_SETUP ;
 struct ata_device* ata_dev_pair (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int) ;
 int ata_timing_merge (struct ata_timing*,struct ata_timing*,struct ata_timing*,int ) ;
 size_t clamp_val (int ,int,int) ;
 int ioread16 (int ) ;
 size_t ioread8 (int ) ;
 int iowrite8 (int,int ) ;
 int opti_syscfg (int) ;

__attribute__((used)) static void opti82c46x_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 u8 active, recover, setup;
 struct ata_timing t;
 struct ata_device *pair = ata_dev_pair(adev);
 int clock;
 int khz[4] = { 50000, 40000, 33000, 25000 };
 u8 rc;
 u8 sysclk;


 sysclk = (opti_syscfg(0xAC) & 0xC0) >> 6;


 ioread16(ap->ioaddr.error_addr);
 ioread16(ap->ioaddr.error_addr);
 iowrite8(3, ap->ioaddr.nsect_addr);


 clock = 1000000000 / khz[sysclk];


 ata_timing_compute(adev, adev->pio_mode, &t, clock, 1000);


 if (pair) {
  struct ata_timing tp;
  ata_timing_compute(pair, pair->pio_mode, &tp, clock, 1000);

  ata_timing_merge(&t, &tp, &t, ATA_TIMING_SETUP);
 }

 active = clamp_val(t.active, 2, 17) - 2;
 recover = clamp_val(t.recover, 1, 16) - 1;
 setup = clamp_val(t.setup, 1, 4) - 1;


 rc = ioread8(ap->ioaddr.lbal_addr);
 rc &= 0x7F;
 rc |= (adev->devno << 7);
 iowrite8(rc, ap->ioaddr.lbal_addr);


 iowrite8(active << 4 | recover, ap->ioaddr.error_addr);



 rc = ioread8(ap->ioaddr.device_addr);
 rc &= 0xC0;
 rc |= adev->devno;
 rc |= (setup << 4) | 0x04;
 iowrite8(rc, ap->ioaddr.device_addr);


 iowrite8(active << 4 | recover, ap->ioaddr.data_addr);


 rc = ioread8(ap->ioaddr.lbal_addr);
 rc &= 0x73;
 rc |= 0x84;
 iowrite8(rc, ap->ioaddr.lbal_addr);


 iowrite8(0x83, ap->ioaddr.nsect_addr);


 ap->host->private_data = ap;
}
