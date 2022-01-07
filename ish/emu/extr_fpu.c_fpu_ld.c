
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;


 int ST (int) ;
 int fpush (int ) ;

void fpu_ld(struct cpu_state *cpu, int i) {
    fpush(ST(i));
}
