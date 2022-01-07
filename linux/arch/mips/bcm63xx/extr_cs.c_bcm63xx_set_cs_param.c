
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int MPI_CSCTL_DATA16_MASK ;
 int MPI_CSCTL_ENDIANSWAP_MASK ;
 int MPI_CSCTL_REG (unsigned int) ;
 int MPI_CSCTL_SYNCMODE_MASK ;
 int MPI_CSCTL_TSIZE_MASK ;
 unsigned int MPI_CS_PCMCIA_ATTR ;
 unsigned int MPI_CS_PCMCIA_COMMON ;
 unsigned int MPI_CS_PCMCIA_IO ;
 int bcm63xx_cs_lock ;
 int bcm_mpi_readl (int ) ;
 int bcm_mpi_writel (int ,int ) ;
 int is_valid_cs (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int bcm63xx_set_cs_param(unsigned int cs, u32 params)
{
 unsigned long flags;
 u32 val;

 if (!is_valid_cs(cs))
  return -EINVAL;


 if (cs == MPI_CS_PCMCIA_COMMON ||
     cs == MPI_CS_PCMCIA_ATTR ||
     cs == MPI_CS_PCMCIA_IO)
  return -EINVAL;

 spin_lock_irqsave(&bcm63xx_cs_lock, flags);
 val = bcm_mpi_readl(MPI_CSCTL_REG(cs));
 val &= ~(MPI_CSCTL_DATA16_MASK);
 val &= ~(MPI_CSCTL_SYNCMODE_MASK);
 val &= ~(MPI_CSCTL_TSIZE_MASK);
 val &= ~(MPI_CSCTL_ENDIANSWAP_MASK);
 val |= params;
 bcm_mpi_writel(val, MPI_CSCTL_REG(cs));
 spin_unlock_irqrestore(&bcm63xx_cs_lock, flags);

 return 0;
}
