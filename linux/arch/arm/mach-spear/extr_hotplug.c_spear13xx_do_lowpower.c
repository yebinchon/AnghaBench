
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int spear_pen_release ;
 int wfi () ;

__attribute__((used)) static inline void spear13xx_do_lowpower(unsigned int cpu, int *spurious)
{
 for (;;) {
  wfi();

  if (spear_pen_release == cpu) {



   break;
  }
  (*spurious)++;
 }
}
