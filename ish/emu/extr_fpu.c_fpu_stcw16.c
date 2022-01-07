
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cpu_state {int fcw; } ;



void fpu_stcw16(struct cpu_state *cpu, uint16_t *i) {
    *i = cpu->fcw;
}
