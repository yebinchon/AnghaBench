
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H1940_LATCH_SM803_ENABLE ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int h1940_bat_init(void)
{
 int ret;

 ret = gpio_request(H1940_LATCH_SM803_ENABLE, "h1940-charger-enable");
 if (ret)
  return ret;
 gpio_direction_output(H1940_LATCH_SM803_ENABLE, 0);

 return 0;

}
