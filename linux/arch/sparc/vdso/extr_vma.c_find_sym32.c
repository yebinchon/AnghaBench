
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vdso_elfinfo32 {int dynsymsize; scalar_t__ dynstr; TYPE_1__* dynsym; } ;
struct TYPE_3__ {scalar_t__ st_name; } ;
typedef TYPE_1__ Elf32_Sym ;


 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static Elf32_Sym *find_sym32(const struct vdso_elfinfo32 *e, const char *name)
{
 unsigned int i;

 for (i = 0; i < (e->dynsymsize / sizeof(Elf32_Sym)); i++) {
  Elf32_Sym *s = &e->dynsym[i];
  if (s->st_name == 0)
   continue;
  if (!strcmp(e->dynstr + s->st_name, name))
   return s;
 }
 return ((void*)0);
}
