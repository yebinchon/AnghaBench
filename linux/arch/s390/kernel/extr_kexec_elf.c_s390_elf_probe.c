
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_ident; } ;
typedef TYPE_1__ Elf_Ehdr ;


 int ELFMAG ;
 int ENOEXEC ;
 int SELFMAG ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static int s390_elf_probe(const char *buf, unsigned long len)
{
 const Elf_Ehdr *ehdr;

 if (len < sizeof(Elf_Ehdr))
  return -ENOEXEC;

 ehdr = (Elf_Ehdr *)buf;






 if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG) != 0)
  return -ENOEXEC;

 return 0;
}
