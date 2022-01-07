
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ st_shndx; int st_name; } ;
typedef TYPE_1__ Elf64_Sym ;


 scalar_t__ SHN_ABS ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void dedotify(Elf64_Sym *syms, unsigned int numsyms, char *strtab)
{
 unsigned int i;

 for (i = 1; i < numsyms; i++) {
  if (syms[i].st_shndx == SHN_UNDEF) {
   char *name = strtab + syms[i].st_name;
   if (name[0] == '.') {
    if (strcmp(name+1, "TOC.") == 0)
     syms[i].st_shndx = SHN_ABS;
    syms[i].st_name++;
   }
  }
 }
}
