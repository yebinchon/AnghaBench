
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct orion_gpio_chip {int dummy; } ;


 int GPIO_BLINK_EN (struct orion_gpio_chip*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void
__set_blinking(struct orion_gpio_chip *ochip, unsigned pin, int blink)
{
 u32 u;

 u = readl(GPIO_BLINK_EN(ochip));
 if (blink)
  u |= 1 << pin;
 else
  u &= ~(1 << pin);
 writel(u, GPIO_BLINK_EN(ochip));
}
