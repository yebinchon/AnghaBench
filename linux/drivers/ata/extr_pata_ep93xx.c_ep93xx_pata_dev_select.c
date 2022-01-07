
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ep93xx_pata_data {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int ATA_DEV1 ;
 int ATA_DEVICE_OBS ;
 int IDECTRL_ADDR_DEVICE ;
 int ata_sff_pause (struct ata_port*) ;
 int ep93xx_pata_write_reg (struct ep93xx_pata_data*,int ,int ) ;

__attribute__((used)) static void ep93xx_pata_dev_select(struct ata_port *ap, unsigned int device)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;
 u8 tmp = ATA_DEVICE_OBS;

 if (device != 0)
  tmp |= ATA_DEV1;

 ep93xx_pata_write_reg(drv_data, tmp, IDECTRL_ADDR_DEVICE);
 ata_sff_pause(ap);
}
