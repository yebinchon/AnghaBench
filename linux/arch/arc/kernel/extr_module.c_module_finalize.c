
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unw_sec_idx; void* unw_info; } ;
struct module {TYPE_1__ arch; } ;
struct TYPE_5__ {int sh_size; scalar_t__ sh_addr; } ;
typedef TYPE_2__ Elf_Shdr ;
typedef int Elf32_Ehdr ;


 void* unwind_add_table (struct module*,void*,int ) ;

int module_finalize(const Elf32_Ehdr *hdr, const Elf_Shdr *sechdrs,
      struct module *mod)
{
 return 0;
}
