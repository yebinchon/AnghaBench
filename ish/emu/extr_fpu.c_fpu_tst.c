
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;


 size_t fconst_zero ;
 int fpu_compare (struct cpu_state*,int ) ;
 int * fpu_consts ;

void fpu_tst(struct cpu_state *cpu) {
    fpu_compare(cpu, fpu_consts[fconst_zero]);
}
