
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRS_PER_PMD ;

void pmd_init(unsigned long addr, unsigned long pagetable)
{
 unsigned long *p, *end;

 p = (unsigned long *) addr;
 end = p + PTRS_PER_PMD;

 do {
  p[0] = pagetable;
  p[1] = pagetable;
  p[2] = pagetable;
  p[3] = pagetable;
  p[4] = pagetable;
  p += 8;
  p[-3] = pagetable;
  p[-2] = pagetable;
  p[-1] = pagetable;
 } while (p != end);
}
