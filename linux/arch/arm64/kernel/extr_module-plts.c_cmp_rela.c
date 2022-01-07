
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r_addend; int r_info; } ;
typedef TYPE_1__ Elf64_Rela ;


 int ELF64_R_SYM (int ) ;
 int ELF64_R_TYPE (int ) ;
 int cmp_3way (int ,int ) ;

__attribute__((used)) static int cmp_rela(const void *a, const void *b)
{
 const Elf64_Rela *x = a, *y = b;
 int i;


 i = cmp_3way(ELF64_R_TYPE(x->r_info), ELF64_R_TYPE(y->r_info));
 if (i == 0)
  i = cmp_3way(ELF64_R_SYM(x->r_info), ELF64_R_SYM(y->r_info));
 if (i == 0)
  i = cmp_3way(x->r_addend, y->r_addend);
 return i;
}
