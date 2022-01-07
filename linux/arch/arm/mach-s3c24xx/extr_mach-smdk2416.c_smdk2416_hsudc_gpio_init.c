
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPF (int) ;
 int S3C2410_GPH (int) ;
 int S3C2416_MISCCR_SEL_SUSPND ;
 int S3C_GPIO_PULL_NONE ;
 int S3C_GPIO_PULL_UP ;
 int S3C_GPIO_SFN (int) ;
 int s3c2410_modify_misccr (int ,int ) ;
 int s3c_gpio_cfgpin (int ,int ) ;
 int s3c_gpio_setpull (int ,int ) ;

__attribute__((used)) static void smdk2416_hsudc_gpio_init(void)
{
 s3c_gpio_setpull(S3C2410_GPH(14), S3C_GPIO_PULL_UP);
 s3c_gpio_setpull(S3C2410_GPF(2), S3C_GPIO_PULL_NONE);
 s3c_gpio_cfgpin(S3C2410_GPH(14), S3C_GPIO_SFN(1));
 s3c2410_modify_misccr(S3C2416_MISCCR_SEL_SUSPND, 0);
}
