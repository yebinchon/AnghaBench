
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;


 int ENODEV ;
 int GPIO_PTE4 ;
 int GPIO_PTF4 ;
 int display_on (void*,struct sh_mobile_lcdc_sys_bus_ops*) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int pr_info (char*) ;
 int read_device_code (void*,struct sh_mobile_lcdc_sys_bus_ops*) ;
 int udelay (int) ;

int kfr2r09_lcd_setup(void *sohandle, struct sh_mobile_lcdc_sys_bus_ops *so)
{

 gpio_set_value(GPIO_PTF4, 0);
 gpio_set_value(GPIO_PTE4, 0);
 gpio_set_value(GPIO_PTF4, 1);
 udelay(1100);
 gpio_set_value(GPIO_PTE4, 1);
 udelay(10);
 gpio_set_value(GPIO_PTF4, 0);
 mdelay(20);

 if (read_device_code(sohandle, so) != 0x01221517)
  return -ENODEV;

 pr_info("KFR2R09 WQVGA LCD Module detected.\n");

 display_on(sohandle, so);
 return 0;
}
