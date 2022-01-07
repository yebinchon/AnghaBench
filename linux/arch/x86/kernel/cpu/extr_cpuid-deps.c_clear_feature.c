
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {scalar_t__ x86_capability; } ;


 int boot_cpu_data ;
 int clear_bit (unsigned int,unsigned long*) ;
 int clear_cpu_cap (int *,unsigned int) ;
 scalar_t__ cpu_caps_cleared ;
 int set_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static inline void clear_feature(struct cpuinfo_x86 *c, unsigned int feature)
{





 if (!c) {
  clear_cpu_cap(&boot_cpu_data, feature);
  set_bit(feature, (unsigned long *)cpu_caps_cleared);
 } else {
  clear_bit(feature, (unsigned long *)c->x86_capability);
 }
}
