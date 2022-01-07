
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int COLLIE_GPIO_IR_ON ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int collie_ir_startup(struct device *dev)
{
 int rc = gpio_request(COLLIE_GPIO_IR_ON, "IrDA");
 if (rc)
  return rc;
 rc = gpio_direction_output(COLLIE_GPIO_IR_ON, 1);

 if (!rc)
  return 0;

 gpio_free(COLLIE_GPIO_IR_ON);
 return rc;
}
