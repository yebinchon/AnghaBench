
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;


 int f80_from_double (double) ;
 int fpu_compare (struct cpu_state*,int ) ;

void fpu_comm64(struct cpu_state *cpu, double *f) {
    fpu_compare(cpu, f80_from_double(*f));
}
