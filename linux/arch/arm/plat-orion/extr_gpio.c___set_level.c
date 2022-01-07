
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct orion_gpio_chip {int dummy; } ;


 int GPIO_OUT (struct orion_gpio_chip*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void __set_level(struct orion_gpio_chip *ochip, unsigned pin, int high)
{
 u32 u;

 u = readl(GPIO_OUT(ochip));
 if (high)
  u |= 1 << pin;
 else
  u &= ~(1 << pin);
 writel(u, GPIO_OUT(ochip));
}
