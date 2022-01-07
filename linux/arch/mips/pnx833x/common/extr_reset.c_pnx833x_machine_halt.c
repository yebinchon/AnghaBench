
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void pnx833x_machine_halt(void)
{
 while (1)
  __asm__ __volatile__ ("wait");

}
