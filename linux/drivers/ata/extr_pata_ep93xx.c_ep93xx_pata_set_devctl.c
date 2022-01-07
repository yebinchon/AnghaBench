
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ep93xx_pata_data {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int IDECTRL_ADDR_CTL ;
 int ep93xx_pata_write_reg (struct ep93xx_pata_data*,int ,int ) ;

__attribute__((used)) static void ep93xx_pata_set_devctl(struct ata_port *ap, u8 ctl)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;

 ep93xx_pata_write_reg(drv_data, ctl, IDECTRL_ADDR_CTL);
}
