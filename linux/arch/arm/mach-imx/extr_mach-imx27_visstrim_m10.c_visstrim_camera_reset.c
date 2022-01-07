
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int TVP5150_RSTN ;
 int gpio_set_value (int ,int) ;
 int ndelay (int) ;

__attribute__((used)) static int visstrim_camera_reset(struct device *dev)
{
 gpio_set_value(TVP5150_RSTN, 0);
 ndelay(500);
 gpio_set_value(TVP5150_RSTN, 1);

 return 0;
}
