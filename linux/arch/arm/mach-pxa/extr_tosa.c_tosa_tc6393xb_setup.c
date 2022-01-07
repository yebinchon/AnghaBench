
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int TOSA_GPIO_CARD_VCC_ON ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int tosa_tc6393xb_setup(struct platform_device *dev)
{
 int rc;

 rc = gpio_request(TOSA_GPIO_CARD_VCC_ON, "CARD_VCC_ON");
 if (rc)
  goto err_req;

 rc = gpio_direction_output(TOSA_GPIO_CARD_VCC_ON, 1);
 if (rc)
  goto err_dir;

 return rc;

err_dir:
 gpio_free(TOSA_GPIO_CARD_VCC_ON);
err_req:
 return rc;
}
