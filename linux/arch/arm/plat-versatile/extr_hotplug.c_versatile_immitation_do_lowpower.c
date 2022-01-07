
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_logical_map (unsigned int) ;
 scalar_t__ versatile_cpu_release ;
 int wfi () ;

__attribute__((used)) static inline void versatile_immitation_do_lowpower(unsigned int cpu, int *spurious)
{







 for (;;) {
  wfi();

  if (versatile_cpu_release == cpu_logical_map(cpu)) {



   break;
  }
  (*spurious)++;
 }
}
