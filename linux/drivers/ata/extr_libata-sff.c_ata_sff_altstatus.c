
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int altstatus_addr; } ;
struct ata_port {TYPE_2__ ioaddr; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* sff_check_altstatus ) (struct ata_port*) ;} ;


 int ioread8 (int ) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static u8 ata_sff_altstatus(struct ata_port *ap)
{
 if (ap->ops->sff_check_altstatus)
  return ap->ops->sff_check_altstatus(ap);

 return ioread8(ap->ioaddr.altstatus_addr);
}
