
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int top; } ;



void fpu_pop(struct cpu_state *cpu) {
    cpu->top++;
}
