
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int stubs_section; unsigned int toc_section; } ;
struct module {TYPE_1__ arch; int name; } ;
struct TYPE_10__ {unsigned int e_shnum; } ;
struct TYPE_9__ {int sh_name; int sh_addralign; int sh_offset; int sh_size; scalar_t__ sh_type; size_t sh_link; } ;
typedef int Elf64_Sym ;
typedef TYPE_2__ Elf64_Shdr ;
typedef TYPE_3__ Elf64_Ehdr ;


 int ENOEXEC ;
 scalar_t__ SHT_SYMTAB ;
 int dedotify (void*,int,void*) ;
 int dedotify_versions (void*,int) ;
 int get_stubs_size (TYPE_3__*,TYPE_2__*) ;
 int pr_err (char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strstr (char*,char*) ;

int module_frob_arch_sections(Elf64_Ehdr *hdr,
         Elf64_Shdr *sechdrs,
         char *secstrings,
         struct module *me)
{
 unsigned int i;


 for (i = 1; i < hdr->e_shnum; i++) {
  char *p;
  if (strcmp(secstrings + sechdrs[i].sh_name, ".stubs") == 0)
   me->arch.stubs_section = i;
  else if (strcmp(secstrings + sechdrs[i].sh_name, ".toc") == 0) {
   me->arch.toc_section = i;
   if (sechdrs[i].sh_addralign < 8)
    sechdrs[i].sh_addralign = 8;
  }
  else if (strcmp(secstrings+sechdrs[i].sh_name,"__versions")==0)
   dedotify_versions((void *)hdr + sechdrs[i].sh_offset,
       sechdrs[i].sh_size);


  while ((p = strstr(secstrings + sechdrs[i].sh_name, ".init")))
   p[0] = '_';

  if (sechdrs[i].sh_type == SHT_SYMTAB)
   dedotify((void *)hdr + sechdrs[i].sh_offset,
     sechdrs[i].sh_size / sizeof(Elf64_Sym),
     (void *)hdr
     + sechdrs[sechdrs[i].sh_link].sh_offset);
 }

 if (!me->arch.stubs_section) {
  pr_err("%s: doesn't contain .stubs.\n", me->name);
  return -ENOEXEC;
 }





 if (!me->arch.toc_section)
  me->arch.toc_section = me->arch.stubs_section;


 sechdrs[me->arch.stubs_section].sh_size = get_stubs_size(hdr, sechdrs);
 return 0;
}
