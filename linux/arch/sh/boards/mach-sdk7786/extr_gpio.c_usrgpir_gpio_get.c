
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int USRGPIR ;
 int fpga_read_reg (int ) ;

__attribute__((used)) static int usrgpir_gpio_get(struct gpio_chip *chip, unsigned gpio)
{
 return !!(fpga_read_reg(USRGPIR) & (1 << gpio));
}
