
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int MPI_CSCTL_ENABLE_MASK ;
 int MPI_CSCTL_REG (unsigned int) ;
 int bcm63xx_cs_lock ;
 int bcm_mpi_readl (int ) ;
 int bcm_mpi_writel (int ,int ) ;
 int is_valid_cs (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int bcm63xx_set_cs_status(unsigned int cs, int enable)
{
 unsigned long flags;
 u32 val;

 if (!is_valid_cs(cs))
  return -EINVAL;

 spin_lock_irqsave(&bcm63xx_cs_lock, flags);
 val = bcm_mpi_readl(MPI_CSCTL_REG(cs));
 if (enable)
  val |= MPI_CSCTL_ENABLE_MASK;
 else
  val &= ~MPI_CSCTL_ENABLE_MASK;
 bcm_mpi_writel(val, MPI_CSCTL_REG(cs));
 spin_unlock_irqrestore(&bcm63xx_cs_lock, flags);
 return 0;
}
