
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status_addr; } ;
struct ata_port {scalar_t__ private_data; TYPE_1__ ioaddr; } ;


 int z_readb (unsigned long) ;
 int z_writeb (int,unsigned long) ;

__attribute__((used)) static void pata_gayle_irq_clear(struct ata_port *ap)
{
 (void)z_readb((unsigned long)ap->ioaddr.status_addr);
 z_writeb(0x7c, (unsigned long)ap->private_data);
}
