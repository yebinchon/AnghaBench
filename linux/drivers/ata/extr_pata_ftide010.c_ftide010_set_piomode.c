
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ftide010 {scalar_t__ base; int dev; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {size_t pio_mode; } ;
struct TYPE_2__ {struct ftide010* private_data; } ;


 scalar_t__ FTIDE010_PIO_TIMING ;
 size_t XFER_PIO_0 ;
 int dev_dbg (int ,char*,size_t,size_t) ;
 int* pio_active_time ;
 int* pio_recovery_time ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ftide010_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct ftide010 *ftide = ap->host->private_data;
 u8 pio = adev->pio_mode - XFER_PIO_0;

 dev_dbg(ftide->dev, "set PIO mode %02x, index %d\n",
  adev->pio_mode, pio);
 writeb(pio_active_time[pio] << 4 | pio_recovery_time[pio],
        ftide->base + FTIDE010_PIO_TIMING);
}
