
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_wait () ;

__attribute__((used)) static void ls1x_halt(void)
{
 while (1) {
  if (cpu_wait)
   cpu_wait();
 }
}
