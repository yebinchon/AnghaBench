
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ r_info; scalar_t__ r_addend; } ;
typedef TYPE_1__ Elf_Rela ;



__attribute__((used)) static int is_rela_equal(const Elf_Rela *x, const Elf_Rela *y)
{
 return x->r_info == y->r_info && x->r_addend == y->r_addend;
}
