
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* e_ident; } ;
typedef TYPE_1__ Elf64_Ehdr ;


 size_t EI_CLASS ;
 scalar_t__ ELFCLASS64 ;
 scalar_t__ PROG_START ;
 scalar_t__ claim_base ;

__attribute__((used)) static void of_image_hdr(const void *hdr)
{
 const Elf64_Ehdr *elf64 = hdr;

 if (elf64->e_ident[EI_CLASS] == ELFCLASS64) {




  if (claim_base < PROG_START)
   claim_base = PROG_START;
 }
}
