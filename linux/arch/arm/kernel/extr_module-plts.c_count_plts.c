
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int r_info; } ;
struct TYPE_7__ {int st_shndx; } ;
typedef int Elf32_Word ;
typedef TYPE_1__ Elf32_Sym ;
typedef TYPE_2__ Elf32_Rel ;
typedef int Elf32_Addr ;


 int ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;





 int duplicate_rel (int ,TYPE_2__ const*,int) ;
 int is_zero_addend_relocation (int ,TYPE_2__ const*) ;

__attribute__((used)) static unsigned int count_plts(const Elf32_Sym *syms, Elf32_Addr base,
          const Elf32_Rel *rel, int num, Elf32_Word dstidx)
{
 unsigned int ret = 0;
 const Elf32_Sym *s;
 int i;

 for (i = 0; i < num; i++) {
  switch (ELF32_R_TYPE(rel[i].r_info)) {
  case 132:
  case 130:
  case 131:
  case 129:
  case 128:
   s = syms + ELF32_R_SYM(rel[i].r_info);
   if (s->st_shndx == dstidx)
    break;
   if (!is_zero_addend_relocation(base, rel + i) ||
       !duplicate_rel(base, rel, i))
    ret++;
  }
 }
 return ret;
}
