
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int c2; int c1; int c0; int c3; } ;
typedef int float80 ;


 int ST (int ) ;
 int f80_eq (int ,int ) ;
 int f80_lt (int ,int ) ;
 scalar_t__ f80_uncomparable (int ,int ) ;

__attribute__((used)) static void fpu_compare(struct cpu_state *cpu, float80 x) {
    cpu->c2 = cpu->c1 = 0;
    cpu->c0 = f80_lt(ST(0), x);
    cpu->c3 = f80_eq(ST(0), x);
    if (f80_uncomparable(ST(0), x))
        cpu->c0 = cpu->c2 = cpu->c3 = 1;
}
