
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_logical_map (unsigned int) ;
 scalar_t__ prima2_pen_release ;

__attribute__((used)) static inline void platform_do_lowpower(unsigned int cpu)
{

 for (;;) {
  __asm__ __volatile__("dsb\n\t" "wfi\n\t"
   : : : "memory");
  if (prima2_pen_release == cpu_logical_map(cpu)) {



   break;
  }
 }
}
