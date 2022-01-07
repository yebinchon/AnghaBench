
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int * x86_capability; } ;


 int NBUGINTS ;
 int NCAPINTS ;
 int * cpu_caps_cleared ;
 int * cpu_caps_set ;

__attribute__((used)) static void apply_forced_caps(struct cpuinfo_x86 *c)
{
 int i;

 for (i = 0; i < NCAPINTS + NBUGINTS; i++) {
  c->x86_capability[i] &= ~cpu_caps_cleared[i];
  c->x86_capability[i] |= cpu_caps_set[i];
 }
}
