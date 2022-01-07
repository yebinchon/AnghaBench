
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 unsigned long S3C64XX_PWRCFG_CFG_WFI_IDLE ;
 unsigned long S3C64XX_PWRCFG_CFG_WFI_MASK ;
 int S3C64XX_PWR_CFG ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int cpu_do_idle () ;

__attribute__((used)) static int s3c64xx_enter_idle(struct cpuidle_device *dev,
         struct cpuidle_driver *drv,
         int index)
{
 unsigned long tmp;


 tmp = __raw_readl(S3C64XX_PWR_CFG);
 tmp &= ~S3C64XX_PWRCFG_CFG_WFI_MASK;
 tmp |= S3C64XX_PWRCFG_CFG_WFI_IDLE;
 __raw_writel(tmp, S3C64XX_PWR_CFG);

 cpu_do_idle();

 return index;
}
