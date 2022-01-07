
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXSTACK_DISABLE_X ;
 int cpu_has_rixi ;

int mips_elf_read_implies_exec(void *elf_ex, int exstack)
{
 if (exstack != EXSTACK_DISABLE_X) {

  return 1;
 }

 if (!cpu_has_rixi) {

  return 1;
 }

 return 0;
}
