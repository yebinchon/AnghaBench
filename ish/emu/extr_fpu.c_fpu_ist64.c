
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;
typedef int int64_t ;


 int ST (int ) ;
 int f80_to_int (int ) ;

void fpu_ist64(struct cpu_state *cpu, int64_t *i) {
    *i = f80_to_int(ST(0));
}
