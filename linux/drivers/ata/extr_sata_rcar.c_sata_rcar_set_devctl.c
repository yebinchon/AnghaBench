
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ctl_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 int iowrite32 (int ,int ) ;

__attribute__((used)) static void sata_rcar_set_devctl(struct ata_port *ap, u8 ctl)
{
 iowrite32(ctl, ap->ioaddr.ctl_addr);
}
