
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_EVENTS_ENABLE ;
 int GPIO_INPUT_INVERT ;
 int GPIO_NEGATIVE_EDGE_EN ;
 int GPIO_NEGATIVE_EDGE_STS ;
 int GPIO_POSITIVE_EDGE_EN ;
 int GPIO_POSITIVE_EDGE_STS ;
 int OLPC_GPIO_LID ;
 int cs5535_gpio_clear (int ,int ) ;
 int cs5535_gpio_set (int ,int ) ;
 int cs5535_gpio_set_irq (int,int ) ;
 int cs5535_gpio_setup_event (int ,int,int) ;
 int gpio_direction_input (int ) ;
 int gpio_request (int ,char*) ;
 scalar_t__ lid_inverted ;
 int sci_irq ;

__attribute__((used)) static int setup_lid_events(void)
{
 int r;

 r = gpio_request(OLPC_GPIO_LID, "OLPC-LID");
 if (r)
  return r;

 gpio_direction_input(OLPC_GPIO_LID);

 cs5535_gpio_clear(OLPC_GPIO_LID, GPIO_INPUT_INVERT);
 lid_inverted = 0;


 cs5535_gpio_clear(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);
 cs5535_gpio_clear(OLPC_GPIO_LID, GPIO_NEGATIVE_EDGE_EN);
 cs5535_gpio_clear(OLPC_GPIO_LID, GPIO_POSITIVE_EDGE_EN);
 cs5535_gpio_set(OLPC_GPIO_LID, GPIO_NEGATIVE_EDGE_STS);
 cs5535_gpio_set(OLPC_GPIO_LID, GPIO_POSITIVE_EDGE_STS);


 cs5535_gpio_setup_event(OLPC_GPIO_LID, 6, 1);


 cs5535_gpio_set_irq(6, sci_irq);


 cs5535_gpio_set(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);

 return 0;
}
