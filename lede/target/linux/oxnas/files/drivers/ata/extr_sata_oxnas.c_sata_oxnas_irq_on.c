
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sata_oxnas_port_priv {scalar_t__ core_base; scalar_t__ port_base; } ;
struct ata_port {int port_no; struct sata_oxnas_port_priv* private_data; } ;


 int COREINT_END ;
 scalar_t__ CORE_INT_ENABLE ;
 scalar_t__ CORE_INT_STATUS ;
 scalar_t__ INT_CLEAR ;
 scalar_t__ INT_ENABLE ;
 int INT_WANT ;
 int iowrite32 (int,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void sata_oxnas_irq_on(struct ata_port *ap)
{
 struct sata_oxnas_port_priv *pd = ap->private_data;
 u32 mask = (COREINT_END << ap->port_no);


 iowrite32(~0, pd->port_base + INT_CLEAR);
 iowrite32(mask, pd->core_base + CORE_INT_STATUS);
 wmb();


 iowrite32(INT_WANT, pd->port_base + INT_ENABLE);
 iowrite32(mask, pd->core_base + CORE_INT_ENABLE);
}
