
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_oxnas_port_priv {scalar_t__ sgdma_base; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; } ;


 scalar_t__ SGDMA_RESETS ;
 int SGDMA_RESETS_CTRL ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void sata_oxnas_reset_sgdma(struct ata_port *ap)
{
 struct sata_oxnas_port_priv *pd = ap->private_data;

 iowrite32(SGDMA_RESETS_CTRL, pd->sgdma_base + SGDMA_RESETS);
}
