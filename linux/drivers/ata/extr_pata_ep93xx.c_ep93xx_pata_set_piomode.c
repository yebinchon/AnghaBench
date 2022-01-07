
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_timing {int dummy; } ;
struct ep93xx_pata_data {int ide_base; int iordy; struct ata_timing t; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {scalar_t__ pio_mode; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int ATA_TIMING_8BIT ;
 int ATA_TIMING_SETUP ;
 scalar_t__ XFER_PIO_0 ;
 struct ata_device* ata_dev_pair (struct ata_device*) ;
 int ata_pio_need_iordy (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,scalar_t__,struct ata_timing*,unsigned long,int ) ;
 int ata_timing_merge (struct ata_timing*,struct ata_timing*,struct ata_timing*,int) ;
 int ep93xx_pata_enable_pio (int ,scalar_t__) ;

__attribute__((used)) static void ep93xx_pata_set_piomode(struct ata_port *ap,
        struct ata_device *adev)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;
 struct ata_device *pair = ata_dev_pair(adev);







 unsigned long T = 1000000 / (200 / 5);

 ata_timing_compute(adev, adev->pio_mode, &drv_data->t, T, 0);
 if (pair && pair->pio_mode) {
  struct ata_timing t;
  ata_timing_compute(pair, pair->pio_mode, &t, T, 0);
  ata_timing_merge(&t, &drv_data->t, &drv_data->t,
   ATA_TIMING_SETUP | ATA_TIMING_8BIT);
 }
 drv_data->iordy = ata_pio_need_iordy(adev);

 ep93xx_pata_enable_pio(drv_data->ide_base,
          adev->pio_mode - XFER_PIO_0);
}
