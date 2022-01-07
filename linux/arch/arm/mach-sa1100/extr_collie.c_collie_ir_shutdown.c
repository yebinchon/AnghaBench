
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int COLLIE_GPIO_IR_ON ;
 int gpio_free (int ) ;

__attribute__((used)) static void collie_ir_shutdown(struct device *dev)
{
 gpio_free(COLLIE_GPIO_IR_ON);
}
