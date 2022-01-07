
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ r_info; scalar_t__ r_addend; } ;
typedef TYPE_1__ Elf64_Rela ;



__attribute__((used)) static int
duplicate_reloc (const Elf64_Rela *rela, unsigned int num)
{
 unsigned int i;

 for (i = 0; i < num; i++) {
  if (rela[i].r_info == rela[num].r_info && rela[i].r_addend == rela[num].r_addend)
   return 1;
 }
 return 0;
}
