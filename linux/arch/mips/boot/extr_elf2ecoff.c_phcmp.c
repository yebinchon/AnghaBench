
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ p_vaddr; } ;
typedef TYPE_1__ Elf32_Phdr ;



__attribute__((used)) static int phcmp(const void *v1, const void *v2)
{
 const Elf32_Phdr *h1 = v1;
 const Elf32_Phdr *h2 = v2;

 if (h1->p_vaddr > h2->p_vaddr)
  return 1;
 else if (h1->p_vaddr < h2->p_vaddr)
  return -1;
 else
  return 0;
}
