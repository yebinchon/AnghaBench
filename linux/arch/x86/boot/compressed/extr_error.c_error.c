
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_putstr (char*) ;
 int warn (char*) ;

void error(char *m)
{
 warn(m);
 error_putstr(" -- System halted");

 while (1)
  asm("hlt");
}
