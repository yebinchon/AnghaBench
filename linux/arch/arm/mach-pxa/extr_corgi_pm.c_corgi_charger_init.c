
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_AND_SIZE (int ) ;
 int charger_gpios ;
 int gpio_request_array (int ) ;

__attribute__((used)) static void corgi_charger_init(void)
{
 gpio_request_array(ARRAY_AND_SIZE(charger_gpios));
}
