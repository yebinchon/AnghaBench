
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __n_counters () ;
 int current_cpu_type () ;

__attribute__((used)) static inline int n_counters(void)
{
 int counters;

 switch (current_cpu_type()) {
 case 131:
  counters = 2;
  break;

 case 130:
 case 129:
 case 128:
  counters = 4;
  break;

 default:
  counters = __n_counters();
 }

 return counters;
}
