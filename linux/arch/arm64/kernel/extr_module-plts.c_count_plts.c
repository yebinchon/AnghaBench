
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct plt_entry {int dummy; } ;
struct TYPE_10__ {int r_offset; int r_addend; int r_info; } ;
struct TYPE_9__ {int st_shndx; } ;
struct TYPE_8__ {int sh_addralign; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef int Elf64_Word ;
typedef TYPE_2__ Elf64_Sym ;
typedef TYPE_3__ Elf64_Rela ;


 int ARM64_WORKAROUND_843419 ;
 int CONFIG_ARM64_ERRATUM_843419 ;
 int CONFIG_RANDOMIZE_BASE ;
 scalar_t__ DIV_ROUND_UP (unsigned int,int) ;
 int ELF64_R_SYM (int ) ;
 int ELF64_R_TYPE (int ) ;
 scalar_t__ IS_ENABLED (int ) ;




 int SZ_4K ;
 scalar_t__ cpus_have_const_cap (int ) ;
 int duplicate_rel (TYPE_3__*,int) ;
 unsigned long long ffz (int) ;
 int max (int ,int) ;

__attribute__((used)) static unsigned int count_plts(Elf64_Sym *syms, Elf64_Rela *rela, int num,
          Elf64_Word dstidx, Elf_Shdr *dstsec)
{
 unsigned int ret = 0;
 Elf64_Sym *s;
 int i;

 for (i = 0; i < num; i++) {
  u64 min_align;

  switch (ELF64_R_TYPE(rela[i].r_info)) {
  case 128:
  case 129:
   if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
    break;
   s = syms + ELF64_R_SYM(rela[i].r_info);
   if (s->st_shndx == dstidx)
    break;
   if (rela[i].r_addend != 0 || !duplicate_rel(rela, i))
    ret++;
   break;
  case 130:
  case 131:
   if (!IS_ENABLED(CONFIG_ARM64_ERRATUM_843419) ||
       !cpus_have_const_cap(ARM64_WORKAROUND_843419))
    break;
   min_align = 2ULL << ffz(rela[i].r_offset | 0x7);
   if (min_align > SZ_4K)
    ret++;
   else
    dstsec->sh_addralign = max(dstsec->sh_addralign,
          min_align);
   break;
  }
 }

 if (IS_ENABLED(CONFIG_ARM64_ERRATUM_843419) &&
     cpus_have_const_cap(ARM64_WORKAROUND_843419))




  ret += DIV_ROUND_UP(ret, (SZ_4K / sizeof(struct plt_entry)));

 return ret;
}
