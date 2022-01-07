
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int S3C64XX_INFORM0 ;
 int S3C64XX_PWR_CFG ;
 int S3C64XX_WAKEUP_STAT ;
 int __pa_symbol (int ) ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int s3c_cpu_resume ;
 int samsung_sync_wakemask (int ,int ,int ) ;
 int wake_irqs ;

__attribute__((used)) static void s3c64xx_pm_prepare(void)
{
 samsung_sync_wakemask(S3C64XX_PWR_CFG,
         wake_irqs, ARRAY_SIZE(wake_irqs));


 __raw_writel(__pa_symbol(s3c_cpu_resume), S3C64XX_INFORM0);


 __raw_writel(__raw_readl(S3C64XX_WAKEUP_STAT), S3C64XX_WAKEUP_STAT);
}
