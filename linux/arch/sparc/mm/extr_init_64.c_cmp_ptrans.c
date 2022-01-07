
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_prom_translation {scalar_t__ virt; } ;



__attribute__((used)) static int cmp_ptrans(const void *a, const void *b)
{
 const struct linux_prom_translation *x = a, *y = b;

 if (x->virt > y->virt)
  return 1;
 if (x->virt < y->virt)
  return -1;
 return 0;
}
