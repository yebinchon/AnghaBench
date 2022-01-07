
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;


 int expand_flags (struct cpu_state*) ;

void helper_expand_flags(struct cpu_state *cpu) {
    expand_flags(cpu);
}
