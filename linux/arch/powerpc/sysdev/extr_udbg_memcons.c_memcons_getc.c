
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int memcons_getc_poll () ;

int memcons_getc(void)
{
 int c;

 while (1) {
  c = memcons_getc_poll();
  if (c == -1)
   cpu_relax();
  else
   break;
 }

 return c;
}
