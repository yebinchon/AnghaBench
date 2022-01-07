
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct biosregs {int ax; int eflags; int cx; int dx; int bx; } ;
struct TYPE_2__ {int alt_mem_k; } ;


 int X86_EFLAGS_CF ;
 TYPE_1__ boot_params ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static void detect_memory_e801(void)
{
 struct biosregs ireg, oreg;

 initregs(&ireg);
 ireg.ax = 0xe801;
 intcall(0x15, &ireg, &oreg);

 if (oreg.eflags & X86_EFLAGS_CF)
  return;


 if (oreg.cx || oreg.dx) {
  oreg.ax = oreg.cx;
  oreg.bx = oreg.dx;
 }

 if (oreg.ax > 15*1024) {
  return;
 } else if (oreg.ax == 15*1024) {
  boot_params.alt_mem_k = (oreg.bx << 6) + oreg.ax;
 } else {







  boot_params.alt_mem_k = oreg.ax;
 }
}
