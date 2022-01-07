
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int zf; int pf; int cf; scalar_t__ pf_res; scalar_t__ zf_res; } ;
typedef int float80 ;


 int ST (int ) ;
 int f80_eq (int ,int ) ;
 int f80_lt (int ,int ) ;
 scalar_t__ f80_uncomparable (int ,int ) ;

__attribute__((used)) static void fpu_comparei(struct cpu_state *cpu, float80 x) {
    cpu->zf_res = cpu->pf_res = 0;
    cpu->zf = cpu->pf = cpu->cf = 0;
    cpu->cf = f80_lt(ST(0), x);
    cpu->zf = f80_eq(ST(0), x);
    if (f80_uncomparable(ST(0), x))
        cpu->zf = cpu->pf = cpu->cf = 1;
}
