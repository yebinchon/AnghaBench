
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int r_info; } ;
typedef TYPE_1__ Elf64_Rela ;


 int ELF64_R_TYPE (int ) ;







 int duplicate_reloc (TYPE_1__ const*,unsigned int) ;

__attribute__((used)) static unsigned int
count_plts (const Elf64_Rela *rela, unsigned int num)
{
 unsigned int i, ret = 0;



 for (i = 0; i < num; i++) {
  switch (ELF64_R_TYPE(rela[i].r_info)) {
        case 132:
        case 131:
        case 130:
        case 128:
        case 129:
        case 133:
        case 134:
   if (!duplicate_reloc(rela, i))
    ret++;
   break;
  }
 }
 return ret;
}
