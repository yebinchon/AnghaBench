
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;
typedef scalar_t__ int16_t ;


 int ST (int ) ;
 scalar_t__ f80_to_int (int ) ;

void fpu_ist16(struct cpu_state *cpu, int16_t *i) {
    *i = (int16_t) f80_to_int(ST(0));
}
