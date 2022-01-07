
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPB (int) ;
 int gpio_set_value (int ,int) ;
 int* power_state ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static void
usb_simtec_powercontrol(int port, int to)
{
 pr_debug("usb_simtec_powercontrol(%d,%d)\n", port, to);

 power_state[port] = to;

 if (power_state[0] && power_state[1])
  gpio_set_value(S3C2410_GPB(4), 0);
 else
  gpio_set_value(S3C2410_GPB(4), 1);
}
