
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfhdr {int e_phnum; scalar_t__ e_phoff; } ;
struct elf_phdr {scalar_t__ p_type; size_t p_filesz; scalar_t__ p_vaddr; } ;
struct coredump_params {int dummy; } ;


 scalar_t__ PT_LOAD ;
 int dump_emit (struct coredump_params*,void*,size_t) ;
 scalar_t__ vsyscall_ehdr ;

int elf_core_write_extra_data(struct coredump_params *cprm)
{
 if ( vsyscall_ehdr ) {
  const struct elfhdr *const ehdrp =
   (struct elfhdr *) vsyscall_ehdr;
  const struct elf_phdr *const phdrp =
   (const struct elf_phdr *) (vsyscall_ehdr + ehdrp->e_phoff);
  int i;

  for (i = 0; i < ehdrp->e_phnum; ++i) {
   if (phdrp[i].p_type == PT_LOAD) {
    void *addr = (void *) phdrp[i].p_vaddr;
    size_t filesz = phdrp[i].p_filesz;
    if (!dump_emit(cprm, addr, filesz))
     return 0;
   }
  }
 }
 return 1;
}
