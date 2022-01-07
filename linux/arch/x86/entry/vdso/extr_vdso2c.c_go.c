
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* e_ident; } ;
typedef int FILE ;
typedef TYPE_1__ Elf64_Ehdr ;


 size_t EI_CLASS ;
 scalar_t__ ELFCLASS32 ;
 scalar_t__ ELFCLASS64 ;
 int fail (char*) ;
 int go32 (void*,size_t,void*,size_t,int *,char const*) ;
 int go64 (void*,size_t,void*,size_t,int *,char const*) ;

__attribute__((used)) static void go(void *raw_addr, size_t raw_len,
        void *stripped_addr, size_t stripped_len,
        FILE *outfile, const char *name)
{
 Elf64_Ehdr *hdr = (Elf64_Ehdr *)raw_addr;

 if (hdr->e_ident[EI_CLASS] == ELFCLASS64) {
  go64(raw_addr, raw_len, stripped_addr, stripped_len,
       outfile, name);
 } else if (hdr->e_ident[EI_CLASS] == ELFCLASS32) {
  go32(raw_addr, raw_len, stripped_addr, stripped_len,
       outfile, name);
 } else {
  fail("unknown ELF class\n");
 }
}
