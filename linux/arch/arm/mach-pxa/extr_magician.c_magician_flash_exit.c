
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EGPIO_MAGICIAN_FLASH_VPP ;
 int gpio_free (int ) ;

__attribute__((used)) static void magician_flash_exit(struct platform_device *pdev)
{
 gpio_free(EGPIO_MAGICIAN_FLASH_VPP);
}
