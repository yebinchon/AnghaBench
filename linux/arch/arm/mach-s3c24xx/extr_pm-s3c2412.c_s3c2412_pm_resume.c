
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int S3C2412_PWRCFG ;
 unsigned long S3C2412_PWRCFG_STANDBYWFI_IDLE ;
 unsigned long S3C2412_PWRCFG_STANDBYWFI_MASK ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int s3c2412_sleep ;
 int s3c_pm_do_restore (int ,int ) ;

__attribute__((used)) static void s3c2412_pm_resume(void)
{
 unsigned long tmp;

 tmp = __raw_readl(S3C2412_PWRCFG);
 tmp &= ~S3C2412_PWRCFG_STANDBYWFI_MASK;
 tmp |= S3C2412_PWRCFG_STANDBYWFI_IDLE;
 __raw_writel(tmp, S3C2412_PWRCFG);

 s3c_pm_do_restore(s3c2412_sleep, ARRAY_SIZE(s3c2412_sleep));
}
