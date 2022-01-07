
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int R4K_HIT ;
 int * cpu_foreign_map ;
 int cpumask_empty (int *) ;
 scalar_t__ mips_cm_present () ;

__attribute__((used)) static inline bool r4k_op_needs_ipi(unsigned int type)
{

 if (type == R4K_HIT && mips_cm_present())
  return 0;
 return 0;

}
