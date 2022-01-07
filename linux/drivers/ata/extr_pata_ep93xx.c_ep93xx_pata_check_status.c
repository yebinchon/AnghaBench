
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ep93xx_pata_data {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int IDECTRL_ADDR_STATUS ;
 int ep93xx_pata_read_reg (struct ep93xx_pata_data*,int ) ;

__attribute__((used)) static u8 ep93xx_pata_check_status(struct ata_port *ap)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;

 return ep93xx_pata_read_reg(drv_data, IDECTRL_ADDR_STATUS);
}
