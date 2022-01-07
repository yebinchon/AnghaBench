
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 int ioread8 (int ) ;

__attribute__((used)) static void pdc20621_irq_clear(struct ata_port *ap)
{
 ioread8(ap->ioaddr.status_addr);
}
