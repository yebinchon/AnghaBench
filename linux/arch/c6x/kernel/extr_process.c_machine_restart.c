
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c6x_restart () ;
 int halt_loop () ;

void machine_restart(char *__unused)
{
 if (c6x_restart)
  c6x_restart();
 halt_loop();
}
