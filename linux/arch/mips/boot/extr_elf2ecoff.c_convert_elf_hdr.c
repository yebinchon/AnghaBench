
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* e_shstrndx; void* e_shnum; void* e_shentsize; void* e_phnum; void* e_phentsize; void* e_ehsize; void* e_flags; void* e_shoff; void* e_phoff; void* e_entry; void* e_version; void* e_machine; void* e_type; } ;
typedef TYPE_1__ Elf32_Ehdr ;


 void* swab16 (void*) ;
 void* swab32 (void*) ;

__attribute__((used)) static void convert_elf_hdr(Elf32_Ehdr * e)
{
 e->e_type = swab16(e->e_type);
 e->e_machine = swab16(e->e_machine);
 e->e_version = swab32(e->e_version);
 e->e_entry = swab32(e->e_entry);
 e->e_phoff = swab32(e->e_phoff);
 e->e_shoff = swab32(e->e_shoff);
 e->e_flags = swab32(e->e_flags);
 e->e_ehsize = swab16(e->e_ehsize);
 e->e_phentsize = swab16(e->e_phentsize);
 e->e_phnum = swab16(e->e_phnum);
 e->e_shentsize = swab16(e->e_shentsize);
 e->e_shnum = swab16(e->e_shnum);
 e->e_shstrndx = swab16(e->e_shstrndx);
}
