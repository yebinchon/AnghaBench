
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __gpio_modify_io (unsigned int,unsigned int) ;
 int wb977_close () ;
 int wb977_open () ;

void nw_gpio_modify_io(unsigned int mask, unsigned int in)
{

 wb977_open();

 __gpio_modify_io(mask, in);


 wb977_close();
}
