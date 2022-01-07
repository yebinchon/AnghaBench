
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int ctl_addr; } ;
struct ata_port {TYPE_2__ ioaddr; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* sff_set_devctl ) (struct ata_port*,int ) ;} ;


 int iowrite8 (int ,int ) ;
 int stub1 (struct ata_port*,int ) ;

__attribute__((used)) static void ata_sff_set_devctl(struct ata_port *ap, u8 ctl)
{
 if (ap->ops->sff_set_devctl)
  ap->ops->sff_set_devctl(ap, ctl);
 else
  iowrite8(ctl, ap->ioaddr.ctl_addr);
}
