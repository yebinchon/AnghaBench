
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long get_tick () ;

void __delay(unsigned long loops)
{
 unsigned long bclock = get_tick();

 while ((get_tick() - bclock) < loops)
  ;
}
