
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long S3C64XX_PWRCFG_CFG_WFI_MASK ;
 unsigned long S3C64XX_PWRCFG_CFG_WFI_SLEEP ;
 int S3C64XX_PWR_CFG ;
 int S3C64XX_WAKEUP_STAT ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int pr_info (char*) ;
 int s3c_pm_debug_smdkled (int,int) ;

__attribute__((used)) static int s3c64xx_cpu_suspend(unsigned long arg)
{
 unsigned long tmp;



 tmp = __raw_readl(S3C64XX_PWR_CFG);
 tmp &= ~S3C64XX_PWRCFG_CFG_WFI_MASK;
 tmp |= S3C64XX_PWRCFG_CFG_WFI_SLEEP;
 __raw_writel(tmp, S3C64XX_PWR_CFG);



 __raw_writel(__raw_readl(S3C64XX_WAKEUP_STAT),
       S3C64XX_WAKEUP_STAT);


 s3c_pm_debug_smdkled(3 << 1, 0xf);




 tmp = 0;

 asm("b 1f\n\t"
     ".align 5\n\t"
     "1:\n\t"
     "mcr p15, 0, %0, c7, c10, 5\n\t"
     "mcr p15, 0, %0, c7, c10, 4\n\t"
     "mcr p15, 0, %0, c7, c0, 4" :: "r" (tmp));



 pr_info("Failed to suspend the system\n");
 return 1;
}
