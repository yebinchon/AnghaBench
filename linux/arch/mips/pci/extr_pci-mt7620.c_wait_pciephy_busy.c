
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BUSY ;
 int PCIEPHY0_CFG ;
 int WAITRETRY_MAX ;
 int mdelay (int) ;
 unsigned long pcie_r32 (int ) ;
 int pr_warn (char*) ;

__attribute__((used)) static int wait_pciephy_busy(void)
{
 unsigned long reg_value = 0x0, retry = 0;

 while (1) {
  reg_value = pcie_r32(PCIEPHY0_CFG);

  if (reg_value & BUSY)
   mdelay(100);
  else
   break;
  if (retry++ > WAITRETRY_MAX) {
   pr_warn("PCIE-PHY retry failed.\n");
   return -1;
  }
 }
 return 0;
}
