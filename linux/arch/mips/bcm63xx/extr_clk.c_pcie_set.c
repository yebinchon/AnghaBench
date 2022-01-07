
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ BCMCPU_IS_6328 () ;
 scalar_t__ BCMCPU_IS_6362 () ;
 int CKCTL_6328_PCIE_EN ;
 int CKCTL_6362_PCIE_EN ;
 int bcm_hwclock_set (int ,int) ;

__attribute__((used)) static void pcie_set(struct clk *clk, int enable)
{
 if (BCMCPU_IS_6328())
  bcm_hwclock_set(CKCTL_6328_PCIE_EN, enable);
 else if (BCMCPU_IS_6362())
  bcm_hwclock_set(CKCTL_6362_PCIE_EN, enable);
}
