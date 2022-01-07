
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;
typedef int float64 ;


 int ST (int ) ;
 int f80_to_double (int ) ;

void fpu_stm64(struct cpu_state *cpu, float64 *f) {
    *f = f80_to_double(ST(0));
}
