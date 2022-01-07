
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int r_addend; int r_info; } ;
typedef TYPE_1__ Elf32_Rela ;


 unsigned int ELF32_R_SYM (int ) ;
 scalar_t__ ELF32_R_TYPE (int ) ;
 scalar_t__ R_PPC_REL24 ;

__attribute__((used)) static unsigned int count_relocs(const Elf32_Rela *rela, unsigned int num)
{
 unsigned int i, r_info, r_addend, _count_relocs;

 _count_relocs = 0;
 r_info = 0;
 r_addend = 0;
 for (i = 0; i < num; i++)

  if (ELF32_R_TYPE(rela[i].r_info) == R_PPC_REL24 &&
      (r_info != ELF32_R_SYM(rela[i].r_info) ||
       r_addend != rela[i].r_addend)) {
   _count_relocs++;
   r_info = ELF32_R_SYM(rela[i].r_info);
   r_addend = rela[i].r_addend;
  }




 return _count_relocs;
}
