
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int TVP5150_PWDN ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int visstrim_camera_power(struct device *dev, int on)
{
 gpio_set_value(TVP5150_PWDN, on);

 return 0;
}
