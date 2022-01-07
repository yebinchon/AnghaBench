
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TIMER10_BASE ;
 unsigned int TIMER1_BASE ;
 unsigned int TIMER2_BASE ;
 unsigned int TIMER3_BASE ;
 unsigned int TIMER4_BASE ;

__attribute__((used)) static inline unsigned int tegra_base_for_cpu(int cpu, bool tegra20)
{
 if (tegra20) {
  switch (cpu) {
  case 0:
   return TIMER1_BASE;
  case 1:
   return TIMER2_BASE;
  case 2:
   return TIMER3_BASE;
  default:
   return TIMER4_BASE;
  }
 }

 return TIMER10_BASE + cpu * 8;
}
