
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;

__attribute__((used)) static void poor_mans_delay(void)
{
 int i;

 for (i = 0; i < 2500000; i++)
  cpu_relax();
}
