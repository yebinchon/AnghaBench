
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep93xx_pata_data {int dummy; } ;
struct ata_taskfile {int command; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int IDECTRL_ADDR_COMMAND ;
 int ata_sff_pause (struct ata_port*) ;
 int ep93xx_pata_write_reg (struct ep93xx_pata_data*,int ,int ) ;

__attribute__((used)) static void ep93xx_pata_exec_command(struct ata_port *ap,
         const struct ata_taskfile *tf)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;

 ep93xx_pata_write_reg(drv_data, tf->command,
     IDECTRL_ADDR_COMMAND);
 ata_sff_pause(ap);
}
