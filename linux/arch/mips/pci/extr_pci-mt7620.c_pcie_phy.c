
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ADDR_SHIFT ;
 unsigned long DATA_SHIFT ;
 int PCIEPHY0_CFG ;
 unsigned long WRITE_MODE ;
 int mdelay (int) ;
 int pcie_w32 (unsigned long,int ) ;
 int wait_pciephy_busy () ;

__attribute__((used)) static void pcie_phy(unsigned long addr, unsigned long val)
{
 wait_pciephy_busy();
 pcie_w32(WRITE_MODE | (val << DATA_SHIFT) | (addr << ADDR_SHIFT),
   PCIEPHY0_CFG);
 mdelay(1);
 wait_pciephy_busy();
}
