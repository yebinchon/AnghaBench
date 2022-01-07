
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ S3C24XX_VA_GPIO ;
 scalar_t__ s3c24xx_va_gpio2 ;

__attribute__((used)) static inline void s3c2412_init_gpio2(void)
{
 s3c24xx_va_gpio2 = S3C24XX_VA_GPIO + 0x10;
}
