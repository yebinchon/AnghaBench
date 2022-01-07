
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_EVENTS_ENABLE ;
 int GPIO_NEGATIVE_EDGE_STS ;
 int GPIO_POSITIVE_EDGE_STS ;
 int OLPC_GPIO_ECSCI ;
 int cs5535_gpio_set (int ,int ) ;
 int cs5535_gpio_setup_event (int ,int,int) ;
 int cs5535_pic_unreqz_select_high (int,int ) ;
 int gpio_direction_input (int ) ;
 int gpio_request (int ,char*) ;
 int sci_irq ;

__attribute__((used)) static int setup_ec_sci(void)
{
 int r;

 r = gpio_request(OLPC_GPIO_ECSCI, "OLPC-ECSCI");
 if (r)
  return r;

 gpio_direction_input(OLPC_GPIO_ECSCI);


 cs5535_gpio_set(OLPC_GPIO_ECSCI, GPIO_NEGATIVE_EDGE_STS);
 cs5535_gpio_set(OLPC_GPIO_ECSCI, GPIO_POSITIVE_EDGE_STS);
 cs5535_gpio_set(OLPC_GPIO_ECSCI, GPIO_EVENTS_ENABLE);


 cs5535_gpio_setup_event(OLPC_GPIO_ECSCI, 7, 1);


 cs5535_pic_unreqz_select_high(7, sci_irq);

 return 0;
}
