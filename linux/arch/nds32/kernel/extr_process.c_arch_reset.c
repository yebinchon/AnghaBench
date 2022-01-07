
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_reset (int ) ;

extern inline void arch_reset(char mode)
{
 if (mode == 's') {

  cpu_reset(0);
 }
}
