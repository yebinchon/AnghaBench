
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REGISTER_HANDLER (int ) ;
 int assert ;
 int gpio_dir ;
 int gpio_get ;
 int gpio_set ;
 int print ;

void js_register_functions (void)
{
  REGISTER_HANDLER(assert);
  REGISTER_HANDLER(print);
  REGISTER_HANDLER(gpio_dir);
  REGISTER_HANDLER(gpio_set);
  REGISTER_HANDLER(gpio_get);
}
