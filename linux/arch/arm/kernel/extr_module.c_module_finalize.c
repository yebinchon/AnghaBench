
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * unwind; } ;
struct module {TYPE_1__ arch; } ;
struct mod_unwind_map {TYPE_2__ const* txt_sec; TYPE_2__ const* unw_sec; } ;
typedef int maps ;
struct TYPE_11__ {size_t e_shstrndx; int e_shnum; } ;
struct TYPE_10__ {int sh_offset; int sh_name; int sh_flags; int sh_size; scalar_t__ sh_addr; } ;
typedef TYPE_2__ Elf_Shdr ;
typedef TYPE_3__ Elf32_Ehdr ;


 size_t ARM_SEC_CORE ;
 size_t ARM_SEC_EXIT ;
 size_t ARM_SEC_HOT ;
 size_t ARM_SEC_INIT ;
 int ARM_SEC_MAX ;
 size_t ARM_SEC_UNLIKELY ;
 int EINVAL ;
 int SHF_ALLOC ;
 TYPE_2__* find_mod_section (TYPE_3__ const*,TYPE_2__ const*,char*) ;
 int fixup_pv_table (void*,int ) ;
 int fixup_smp (void*,int ) ;
 int is_smp () ;
 int memset (struct mod_unwind_map*,int ,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int unwind_table_add (scalar_t__,int ,scalar_t__,int ) ;

int module_finalize(const Elf32_Ehdr *hdr, const Elf_Shdr *sechdrs,
      struct module *mod)
{
 const Elf_Shdr *s = ((void*)0);
 s = find_mod_section(hdr, sechdrs, ".alt.smp.init");
 if (s && !is_smp())



  return -EINVAL;

 return 0;
}
