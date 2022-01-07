
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep93xx_pata_data {int t; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int XFER_PIO_0 ;
 int * ata_timing_find_mode (int ) ;

__attribute__((used)) static int ep93xx_pata_port_start(struct ata_port *ap)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;





 drv_data->t = *ata_timing_find_mode(XFER_PIO_0);
 return 0;
}
