
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_port {scalar_t__ private_data; } ;


 int GAYLE_IRQ_IDE ;
 int z_readb (unsigned long) ;

__attribute__((used)) static bool pata_gayle_irq_check(struct ata_port *ap)
{
 u8 ch;

 ch = z_readb((unsigned long)ap->private_data);

 return !!(ch & GAYLE_IRQ_IDE);
}
