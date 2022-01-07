
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxnas_pcie {int pcie_ctrl_offset; int sys_ctrl; } ;


 unsigned long HZ ;
 unsigned long LINK_UP_TIMEOUT_SECONDS ;
 unsigned int PCIE_LINK_UP ;
 unsigned long jiffies ;
 int regmap_read (int ,int ,unsigned int*) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int oxnas_pcie_link_up(struct oxnas_pcie *pcie)
{
 unsigned long end;
 unsigned int val;


 end = jiffies + (LINK_UP_TIMEOUT_SECONDS * HZ);
 while (!time_after(jiffies, end)) {
  regmap_read(pcie->sys_ctrl, pcie->pcie_ctrl_offset, &val);
  if (val & PCIE_LINK_UP)
   return 1;
 }
 return 0;
}
