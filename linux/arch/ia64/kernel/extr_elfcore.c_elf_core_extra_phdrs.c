
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_phnum; } ;
typedef int Elf64_Half ;


 TYPE_1__* GATE_EHDR ;

Elf64_Half elf_core_extra_phdrs(void)
{
 return GATE_EHDR->e_phnum;
}
