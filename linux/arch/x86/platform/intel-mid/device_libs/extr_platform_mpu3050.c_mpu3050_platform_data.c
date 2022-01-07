
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_board_info {scalar_t__ irq; } ;


 scalar_t__ INTEL_MID_IRQ_OFFSET ;
 int get_gpio_by_name (char*) ;

__attribute__((used)) static void *mpu3050_platform_data(void *info)
{
 struct i2c_board_info *i2c_info = info;
 int intr = get_gpio_by_name("mpu3050_int");

 if (intr < 0)
  return ((void*)0);

 i2c_info->irq = intr + INTEL_MID_IRQ_OFFSET;
 return ((void*)0);
}
