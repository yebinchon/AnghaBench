
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int cpu_relax () ;
 scalar_t__ get_cycles () ;

void __delay(unsigned long cycles)
{
 u64 t0 = get_cycles();

 while ((unsigned long)(get_cycles() - t0) < cycles)
  cpu_relax();
}
