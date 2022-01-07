
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;
typedef int int32_t ;


 int f80_from_int (int ) ;
 int fpush (int ) ;

void fpu_ild32(struct cpu_state *cpu, int32_t *i) {
    fpush(f80_from_int(*i));
}
