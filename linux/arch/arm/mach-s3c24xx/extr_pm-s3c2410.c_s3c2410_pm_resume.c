
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOF_OUT_INIT_LOW ;
 int S3C2410_GPF (int) ;
 int S3C2410_GSTATUS2 ;
 unsigned long S3C2410_GSTATUS2_OFFRESET ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int gpio_free (int ) ;
 int gpio_request_one (int ,int ,int *) ;
 scalar_t__ machine_is_aml_m5900 () ;

__attribute__((used)) static void s3c2410_pm_resume(void)
{
 unsigned long tmp;



 tmp = __raw_readl(S3C2410_GSTATUS2);
 tmp &= S3C2410_GSTATUS2_OFFRESET;
 __raw_writel(tmp, S3C2410_GSTATUS2);

 if (machine_is_aml_m5900()) {
  gpio_request_one(S3C2410_GPF(2), GPIOF_OUT_INIT_LOW, ((void*)0));
  gpio_free(S3C2410_GPF(2));
 }
}
