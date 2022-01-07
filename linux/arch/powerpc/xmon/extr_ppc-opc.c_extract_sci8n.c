
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_cpu_t ;


 long extract_sci8 (unsigned long,int ,int*) ;

__attribute__((used)) static long
extract_sci8n (unsigned long insn,
        ppc_cpu_t dialect,
        int *invalid)
{
  return -extract_sci8 (insn, dialect, invalid);
}
