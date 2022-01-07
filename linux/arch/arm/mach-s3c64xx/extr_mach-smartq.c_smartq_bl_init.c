
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int S3C64XX_GPF (int) ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgpin (int ,int ) ;

__attribute__((used)) static int smartq_bl_init(struct device *dev)
{
    s3c_gpio_cfgpin(S3C64XX_GPF(15), S3C_GPIO_SFN(2));

    return 0;
}
