
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int S3C2412_PWRCFG ;
 int samsung_sync_wakemask (int ,int ,int ) ;
 int wake_irqs ;

__attribute__((used)) static void s3c2412_pm_prepare(void)
{
 samsung_sync_wakemask(S3C2412_PWRCFG,
         wake_irqs, ARRAY_SIZE(wake_irqs));
}
