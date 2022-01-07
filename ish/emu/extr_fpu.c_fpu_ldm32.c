
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_state {int dummy; } ;
typedef int float32 ;


 int f80_from_double (int ) ;
 int fpush (int ) ;

void fpu_ldm32(struct cpu_state *cpu, float32 *f) {
    fpush(f80_from_double(*f));
}
