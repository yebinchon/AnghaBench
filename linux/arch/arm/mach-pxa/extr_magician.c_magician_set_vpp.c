
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EGPIO_MAGICIAN_FLASH_VPP ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void magician_set_vpp(struct platform_device *pdev, int vpp)
{
 gpio_set_value(EGPIO_MAGICIAN_FLASH_VPP, vpp);
}
