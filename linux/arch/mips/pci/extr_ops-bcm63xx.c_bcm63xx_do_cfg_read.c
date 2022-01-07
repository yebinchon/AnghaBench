
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MPI_L2PCFG_REG ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int __raw_readl (int ) ;
 scalar_t__ bcm63xx_setup_cfg_access (int,unsigned int,unsigned int,int) ;
 int bcm_mpi_writel (int ,int ) ;
 int iob () ;
 int le32_to_cpu (int ) ;
 int pci_iospace_start ;
 int postprocess_read (int ,int,int) ;

__attribute__((used)) static int bcm63xx_do_cfg_read(int type, unsigned int busn,
    unsigned int devfn, int where, int size,
    u32 *val)
{
 u32 data;




 if (bcm63xx_setup_cfg_access(type, busn, devfn, where))
  return PCIBIOS_DEVICE_NOT_FOUND;
 iob();
 data = le32_to_cpu(__raw_readl(pci_iospace_start));

 bcm_mpi_writel(0, MPI_L2PCFG_REG);

 *val = postprocess_read(data, where, size);

 return PCIBIOS_SUCCESSFUL;
}
