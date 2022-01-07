
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep93xx_pata_data {int dummy; } ;
struct ata_port {int ctl; int last_ctl; int link; TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int ATA_SRST ;
 int IDECTRL_ADDR_CTL ;
 int ep93xx_pata_wait_after_reset (int *,unsigned int,unsigned long) ;
 int ep93xx_pata_write_reg (struct ep93xx_pata_data*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ep93xx_pata_bus_softreset(struct ata_port *ap, unsigned int devmask,
         unsigned long deadline)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;

 ep93xx_pata_write_reg(drv_data, ap->ctl, IDECTRL_ADDR_CTL);
 udelay(20);
 ep93xx_pata_write_reg(drv_data, ap->ctl | ATA_SRST, IDECTRL_ADDR_CTL);
 udelay(20);
 ep93xx_pata_write_reg(drv_data, ap->ctl, IDECTRL_ADDR_CTL);
 ap->last_ctl = ap->ctl;

 return ep93xx_pata_wait_after_reset(&ap->link, devmask, deadline);
}
