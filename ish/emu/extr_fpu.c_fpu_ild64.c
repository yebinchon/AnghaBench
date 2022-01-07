
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;
typedef int int64_t ;


 int f80_from_int (int ) ;
 int fpush (int ) ;

void fpu_ild64(struct cpu_state *cpu, int64_t *i) {
    fpush(f80_from_int(*i));
}
