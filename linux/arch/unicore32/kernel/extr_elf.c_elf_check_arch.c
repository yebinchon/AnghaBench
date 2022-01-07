
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_hdr {scalar_t__ e_machine; int e_entry; } ;


 scalar_t__ EM_UNICORE ;

int elf_check_arch(const struct elf32_hdr *x)
{

 if (x->e_machine != EM_UNICORE)
  return 0;


 if (x->e_entry & 3)
  return 0;

 return 1;
}
