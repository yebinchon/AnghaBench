
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {scalar_t__ phys_proc_id; scalar_t__ cpu_die_id; } ;



__attribute__((used)) static bool match_die(struct cpuinfo_x86 *c, struct cpuinfo_x86 *o)
{
 if ((c->phys_proc_id == o->phys_proc_id) &&
  (c->cpu_die_id == o->cpu_die_id))
  return 1;
 return 0;
}
