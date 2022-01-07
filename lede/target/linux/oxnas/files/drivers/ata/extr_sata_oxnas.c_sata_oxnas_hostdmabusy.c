
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sata_oxnas_port_priv {scalar_t__ sgdma_base; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; } ;


 int SGDMA_BUSY ;
 scalar_t__ SGDMA_STATUS ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 sata_oxnas_hostdmabusy(struct ata_port *ap)
{
 struct sata_oxnas_port_priv *pd = ap->private_data;

 return ioread32(pd->sgdma_base + SGDMA_STATUS) & SGDMA_BUSY;
}
