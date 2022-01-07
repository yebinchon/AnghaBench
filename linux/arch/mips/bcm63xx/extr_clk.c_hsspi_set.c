
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 scalar_t__ BCMCPU_IS_6328 () ;
 scalar_t__ BCMCPU_IS_6362 () ;
 int CKCTL_6328_HSSPI_EN ;
 int CKCTL_6362_HSSPI_EN ;
 int bcm_hwclock_set (int ,int) ;

__attribute__((used)) static void hsspi_set(struct clk *clk, int enable)
{
 u32 mask;

 if (BCMCPU_IS_6328())
  mask = CKCTL_6328_HSSPI_EN;
 else if (BCMCPU_IS_6362())
  mask = CKCTL_6362_HSSPI_EN;
 else
  return;

 bcm_hwclock_set(mask, enable);
}
