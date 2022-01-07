
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; scalar_t__ text_size; } ;
struct module {TYPE_1__ core_layout; } ;
struct TYPE_9__ {unsigned int e_shnum; } ;
struct TYPE_8__ {unsigned long sh_entsize; unsigned long const sh_flags; } ;
typedef TYPE_2__ Elf_Shdr ;
typedef TYPE_3__ Elf_Ehdr ;



 unsigned int ARRAY_SIZE (unsigned long const**) ;



 unsigned long get_offset (unsigned long*,TYPE_2__*) ;

__attribute__((used)) static void layout_sections(struct module *mod, const Elf_Ehdr *hdr,
       Elf_Shdr *sechdrs, const char *secstrings)
{
 static unsigned long const masks[][2] = {



  {129 | 130, 131},
  {130, 128 | 131},
  {128 | 130, 131},
  {131 | 130, 0}
 };
 unsigned int m, i;

 for (i = 0; i < hdr->e_shnum; i++)
  sechdrs[i].sh_entsize = ~0UL;

 for (m = 0; m < ARRAY_SIZE(masks); ++m) {
  for (i = 0; i < hdr->e_shnum; ++i) {
   Elf_Shdr *s = &sechdrs[i];

   if ((s->sh_flags & masks[m][0]) != masks[m][0]
       || (s->sh_flags & masks[m][1])
       || s->sh_entsize != ~0UL)
    continue;
   s->sh_entsize =
    get_offset((unsigned long *)&mod->core_layout.size, s);
  }

  if (m == 0)
   mod->core_layout.text_size = mod->core_layout.size;

 }
}
