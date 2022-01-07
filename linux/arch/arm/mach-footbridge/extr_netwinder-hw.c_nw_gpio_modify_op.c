
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GP1_IO_BASE ;
 int GP2_IO_BASE ;
 unsigned int current_gpio_op ;
 int outb (unsigned int,int ) ;

void nw_gpio_modify_op(unsigned int mask, unsigned int set)
{
 unsigned int new_gpio, changed;

 new_gpio = (current_gpio_op & ~mask) | set;
 changed = new_gpio ^ current_gpio_op;
 current_gpio_op = new_gpio;

 if (changed & 0xff)
  outb(new_gpio, GP1_IO_BASE);
 if (changed & 0xff00)
  outb(new_gpio >> 8, GP2_IO_BASE);
}
