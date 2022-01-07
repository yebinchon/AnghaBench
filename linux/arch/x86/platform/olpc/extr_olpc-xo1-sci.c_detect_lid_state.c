
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_READ_BACK ;
 int OLPC_GPIO_LID ;
 int cs5535_gpio_isset (int ,int ) ;
 int flip_lid_inverter () ;
 int lid_inverted ;
 int lid_open ;

__attribute__((used)) static void detect_lid_state(void)
{
 int state;

 state = cs5535_gpio_isset(OLPC_GPIO_LID, GPIO_READ_BACK);
 lid_open = !state ^ !lid_inverted;
 if (!state)
  return;

 flip_lid_inverter();
}
