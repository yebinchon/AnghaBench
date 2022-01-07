
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int S3C64XX_GPB (int) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int hmt_bl_init(struct device *dev)
{
 int ret;

 ret = gpio_request(S3C64XX_GPB(4), "lcd backlight enable");
 if (!ret)
  ret = gpio_direction_output(S3C64XX_GPB(4), 0);

 return ret;
}
