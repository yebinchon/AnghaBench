
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int start_opd; int end_opd; } ;
struct module {TYPE_1__ arch; } ;
struct TYPE_10__ {int cpu_features; int mmu_features; } ;
struct TYPE_9__ {int sh_addr; int sh_size; } ;
typedef TYPE_2__ Elf_Shdr ;
typedef int Elf_Ehdr ;


 int barrier_nospec_enabled ;
 TYPE_7__* cur_cpu_spec ;
 int do_barrier_nospec_fixups_range (int ,void*,void*) ;
 int do_feature_fixups (int ,void*,void*) ;
 int do_lwsync_fixups (int ,void*,void*) ;
 TYPE_2__* find_section (int const*,TYPE_2__ const*,char*) ;
 int module_finalize_ftrace (struct module*,TYPE_2__ const*) ;
 int powerpc_firmware_features ;

int module_finalize(const Elf_Ehdr *hdr,
  const Elf_Shdr *sechdrs, struct module *me)
{
 const Elf_Shdr *sect;
 int rc;

 rc = module_finalize_ftrace(me, sechdrs);
 if (rc)
  return rc;


 sect = find_section(hdr, sechdrs, "__ftr_fixup");
 if (sect != ((void*)0))
  do_feature_fixups(cur_cpu_spec->cpu_features,
      (void *)sect->sh_addr,
      (void *)sect->sh_addr + sect->sh_size);

 sect = find_section(hdr, sechdrs, "__mmu_ftr_fixup");
 if (sect != ((void*)0))
  do_feature_fixups(cur_cpu_spec->mmu_features,
      (void *)sect->sh_addr,
      (void *)sect->sh_addr + sect->sh_size);
 sect = find_section(hdr, sechdrs, "__lwsync_fixup");
 if (sect != ((void*)0))
  do_lwsync_fixups(cur_cpu_spec->cpu_features,
     (void *)sect->sh_addr,
     (void *)sect->sh_addr + sect->sh_size);

 return 0;
}
