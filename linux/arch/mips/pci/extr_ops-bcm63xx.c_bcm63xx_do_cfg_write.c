
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MPI_L2PCFG_REG ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 scalar_t__ bcm63xx_setup_cfg_access (int,unsigned int,unsigned int,int) ;
 int bcm_mpi_writel (int ,int ) ;
 int cpu_to_le32 (int ) ;
 int iob () ;
 int le32_to_cpu (int ) ;
 int pci_iospace_start ;
 int preprocess_write (int ,int ,int,int) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static int bcm63xx_do_cfg_write(int type, unsigned int busn,
     unsigned int devfn, int where, int size,
     u32 val)
{
 u32 data;




 if (bcm63xx_setup_cfg_access(type, busn, devfn, where))
  return PCIBIOS_DEVICE_NOT_FOUND;
 iob();

 data = le32_to_cpu(__raw_readl(pci_iospace_start));
 data = preprocess_write(data, val, where, size);

 __raw_writel(cpu_to_le32(data), pci_iospace_start);
 wmb();

 udelay(500);

 bcm_mpi_writel(0, MPI_L2PCFG_REG);

 return PCIBIOS_SUCCESSFUL;
}
