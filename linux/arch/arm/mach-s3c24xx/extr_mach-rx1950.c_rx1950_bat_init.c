
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPJ (int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int rx1950_bat_init(void)
{
 int ret;

 ret = gpio_request(S3C2410_GPJ(2), "rx1950-charger-enable-1");
 if (ret)
  goto err_gpio1;
 ret = gpio_request(S3C2410_GPJ(3), "rx1950-charger-enable-2");
 if (ret)
  goto err_gpio2;

 return 0;

err_gpio2:
 gpio_free(S3C2410_GPJ(2));
err_gpio1:
 return ret;
}
