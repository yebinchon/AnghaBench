
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_gpio_io ;
 int wb977_device_select (int) ;
 int wb977_wb (int,unsigned int) ;

__attribute__((used)) static inline void __gpio_modify_io(int mask, int in)
{
 unsigned int new_gpio, changed;
 int port;

 new_gpio = (current_gpio_io & ~mask) | in;
 changed = new_gpio ^ current_gpio_io;
 current_gpio_io = new_gpio;

 changed >>= 1;
 new_gpio >>= 1;

 wb977_device_select(7);

 for (port = 0xe1; changed && port < 0xe8; changed >>= 1) {
  wb977_wb(port, new_gpio & 1);

  port += 1;
  new_gpio >>= 1;
 }

 wb977_device_select(8);

 for (port = 0xe8; changed && port < 0xec; changed >>= 1) {
  wb977_wb(port, new_gpio & 1);

  port += 1;
  new_gpio >>= 1;
 }
}
