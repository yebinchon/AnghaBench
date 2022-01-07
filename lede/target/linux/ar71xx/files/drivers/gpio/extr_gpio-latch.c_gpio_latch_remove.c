
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gpio_latch_chip {int gc; } ;


 int gpiochip_remove (int *) ;
 struct gpio_latch_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gpio_latch_remove(struct platform_device *pdev)
{
 struct gpio_latch_chip *glc = platform_get_drvdata(pdev);

 gpiochip_remove(&glc->gc);
 return 0;
}
