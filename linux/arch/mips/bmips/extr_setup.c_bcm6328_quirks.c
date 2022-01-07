
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCM6328_TP1_DISABLED ;
 int REG_BCM6328_OTP ;
 int __raw_readl (int ) ;
 int bcm63xx_fixup_cpu1 () ;
 scalar_t__ bmips_smp_enabled ;

__attribute__((used)) static void bcm6328_quirks(void)
{

 if (__raw_readl(REG_BCM6328_OTP) & BCM6328_TP1_DISABLED)
  bmips_smp_enabled = 0;
 else
  bcm63xx_fixup_cpu1();
}
