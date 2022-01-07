
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {scalar_t__ private_data; } ;


 int z_writeb (int ,unsigned long) ;

__attribute__((used)) static void pata_xsurf_irq_clear(struct ata_port *ap)
{
 z_writeb(0, (unsigned long)ap->private_data);
}
