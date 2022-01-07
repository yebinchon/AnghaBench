
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;
typedef enum fpu_const { ____Placeholder_fpu_const } fpu_const ;


 int * fpu_consts ;
 int fpush (int ) ;

void fpu_ldc(struct cpu_state *cpu, enum fpu_const c) {
    fpush(fpu_consts[c]);
}
