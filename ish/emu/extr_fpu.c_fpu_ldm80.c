
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;
typedef int float80 ;


 int fpush (int ) ;

void fpu_ldm80(struct cpu_state *cpu, float80 *f) {
    fpush(*f);
}
