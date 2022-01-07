
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;
typedef int int16_t ;


 int f80_from_int (int ) ;
 int fpu_compare (struct cpu_state*,int ) ;

void fpu_icom16(struct cpu_state *cpu, int16_t *i) {
    fpu_compare(cpu, f80_from_int(*i));
}
