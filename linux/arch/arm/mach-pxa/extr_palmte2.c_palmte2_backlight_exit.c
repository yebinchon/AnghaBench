
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ARRAY_AND_SIZE (int ) ;
 int gpio_free_array (int ) ;
 int palmte_bl_gpios ;

__attribute__((used)) static void palmte2_backlight_exit(struct device *dev)
{
 gpio_free_array(ARRAY_AND_SIZE(palmte_bl_gpios));
}
