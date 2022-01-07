
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int KEYDETR ;
 int __raw_readw (int ) ;

__attribute__((used)) static int x3proto_gpio_get(struct gpio_chip *chip, unsigned gpio)
{
 return !!(__raw_readw(KEYDETR) & (1 << gpio));
}
