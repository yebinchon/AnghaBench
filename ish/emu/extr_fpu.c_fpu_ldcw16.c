
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cpu_state {int rc; int fcw; } ;


 int f80_rounding_mode ;

void fpu_ldcw16(struct cpu_state *cpu, uint16_t *i) {
    cpu->fcw = *i;
    f80_rounding_mode = cpu->rc;
}
