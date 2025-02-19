
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIPS_MAAR_S ;
 unsigned long MIPS_MAAR_VH ;
 int MIPS_MAAR_VL ;
 int PG_ELPA ;
 scalar_t__ cpu_guest_has_mvh ;
 unsigned int dmtc_op ;
 unsigned int mtc_op ;
 int read_gc0_pagegrain () ;

__attribute__((used)) static unsigned long mips_process_maar(unsigned int op, unsigned long val)
{

 unsigned long mask = 0xfffff000 | MIPS_MAAR_S | MIPS_MAAR_VL;

 if (read_gc0_pagegrain() & PG_ELPA)
  mask |= 0x00ffffff00000000ull;
 if (cpu_guest_has_mvh)
  mask |= MIPS_MAAR_VH;


 if (op == mtc_op) {

  val &= ~MIPS_MAAR_VH;
 } else if (op == dmtc_op) {

  val &= ~MIPS_MAAR_VH;
  if (val & MIPS_MAAR_VL)
   val |= MIPS_MAAR_VH;
 }

 return val & mask;
}
