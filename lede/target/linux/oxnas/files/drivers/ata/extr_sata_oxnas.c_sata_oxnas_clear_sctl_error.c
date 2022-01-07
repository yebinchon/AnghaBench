
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sata_oxnas_port_priv {int * port_base; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; } ;


 int SATA_CONTROL ;
 int SCTL_CLR_ERR ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;

__attribute__((used)) static inline void sata_oxnas_clear_sctl_error(struct ata_port *ap)
{
 struct sata_oxnas_port_priv *pd = ap->private_data;
 u32 *base = pd->port_base;
 u32 reg;

 reg = ioread32(base + SATA_CONTROL);
 reg |= SCTL_CLR_ERR;
 iowrite32(reg, base + SATA_CONTROL);
}
