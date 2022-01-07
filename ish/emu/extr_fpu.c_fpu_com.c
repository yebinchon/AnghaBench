
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;


 int ST (int) ;
 int fpu_compare (struct cpu_state*,int ) ;

void fpu_com(struct cpu_state *cpu, int i) {
    fpu_compare(cpu, ST(i));
}
