
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int label; } ;


 int strcmp (char*,int ) ;

__attribute__((used)) static int gpiochip_match_by_label(struct gpio_chip *chip, void *data)
{
 char *label = data;

 return !strcmp(label, chip->label);
}
