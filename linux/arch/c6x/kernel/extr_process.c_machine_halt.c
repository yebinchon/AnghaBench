
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c6x_halt () ;
 int halt_loop () ;

void machine_halt(void)
{
 if (c6x_halt)
  c6x_halt();
 halt_loop();
}
