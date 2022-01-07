
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;


 int collapse_flags (struct cpu_state*) ;

void helper_collapse_flags(struct cpu_state *cpu) {
    collapse_flags(cpu);
}
