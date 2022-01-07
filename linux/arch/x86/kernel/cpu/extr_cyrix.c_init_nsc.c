
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86; int x86_model; } ;


 int cpu_detect_cache_sizes (struct cpuinfo_x86*) ;
 int init_cyrix (struct cpuinfo_x86*) ;

__attribute__((used)) static void init_nsc(struct cpuinfo_x86 *c)
{
 if (c->x86 == 5 && c->x86_model == 5)
  cpu_detect_cache_sizes(c);
 else
  init_cyrix(c);
}
