
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ehdr ;
struct TYPE_6__ {scalar_t__* e_ident; int e_phnum; int e_phoff; int p_type; int p_align; int p_filesz; int p_offset; scalar_t__ p_paddr; } ;
typedef int Elf64_Phdr ;
typedef int Elf64_Ehdr ;
typedef TYPE_1__ Elf32_Phdr ;
typedef TYPE_1__ Elf32_Ehdr ;


 size_t EI_MAG0 ;
 size_t EI_MAG1 ;
 size_t EI_MAG2 ;
 size_t EI_MAG3 ;
 scalar_t__ ELFMAG0 ;
 scalar_t__ ELFMAG1 ;
 scalar_t__ ELFMAG2 ;
 scalar_t__ ELFMAG3 ;
 scalar_t__ LOAD_PHYSICAL_ADDR ;

 int debug_putstr (char*) ;
 int error (char*) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memcpy (TYPE_1__*,void*,int) ;
 int memmove (void*,void*,int ) ;

__attribute__((used)) static void parse_elf(void *output)
{




 Elf32_Ehdr ehdr;
 Elf32_Phdr *phdrs, *phdr;

 void *dest;
 int i;

 memcpy(&ehdr, output, sizeof(ehdr));
 if (ehdr.e_ident[EI_MAG0] != ELFMAG0 ||
    ehdr.e_ident[EI_MAG1] != ELFMAG1 ||
    ehdr.e_ident[EI_MAG2] != ELFMAG2 ||
    ehdr.e_ident[EI_MAG3] != ELFMAG3) {
  error("Kernel is not a valid ELF file");
  return;
 }

 debug_putstr("Parsing ELF... ");

 phdrs = malloc(sizeof(*phdrs) * ehdr.e_phnum);
 if (!phdrs)
  error("Failed to allocate space for phdrs");

 memcpy(phdrs, output + ehdr.e_phoff, sizeof(*phdrs) * ehdr.e_phnum);

 for (i = 0; i < ehdr.e_phnum; i++) {
  phdr = &phdrs[i];

  switch (phdr->p_type) {
  case 128:
   dest = (void *)(phdr->p_paddr);

   memmove(dest, output + phdr->p_offset, phdr->p_filesz);
   break;
  default: break;
  }
 }

 free(phdrs);
}
