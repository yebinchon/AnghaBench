
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long cycles_t ;


 int cpu_relax () ;
 unsigned long get_cycles () ;

__attribute__((used)) static void __timer_delay(unsigned long cycles)
{
 cycles_t start = get_cycles();

 while ((get_cycles() - start) < cycles)
  cpu_relax();
}
