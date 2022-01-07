
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EGPIO_MAGICIAN_FLASH_VPP ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int magician_flash_init(struct platform_device *pdev)
{
 int ret = gpio_request(EGPIO_MAGICIAN_FLASH_VPP, "flash Vpp enable");

 if (ret) {
  pr_err("Cannot request flash enable GPIO (%i)\n", ret);
  return ret;
 }

 ret = gpio_direction_output(EGPIO_MAGICIAN_FLASH_VPP, 1);
 if (ret) {
  pr_err("Cannot set direction for flash enable (%i)\n", ret);
  gpio_free(EGPIO_MAGICIAN_FLASH_VPP);
 }

 return ret;
}
