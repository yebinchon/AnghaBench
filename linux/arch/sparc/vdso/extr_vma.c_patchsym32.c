
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vdso_elfinfo32 {int dummy; } ;
struct TYPE_4__ {struct vdso_elfinfo32 elf32; } ;
struct vdso_elfinfo {TYPE_1__ u; } ;
struct TYPE_5__ {int st_shndx; int st_other; int st_info; int st_size; int st_value; } ;
typedef TYPE_2__ Elf32_Sym ;


 int ENODEV ;
 TYPE_2__* find_sym32 (struct vdso_elfinfo32*,char const*) ;
 int pr_err (char*) ;

__attribute__((used)) static int patchsym32(struct vdso_elfinfo *_e, const char *orig,
        const char *new)
{
 struct vdso_elfinfo32 *e = &_e->u.elf32;
 Elf32_Sym *osym = find_sym32(e, orig);
 Elf32_Sym *nsym = find_sym32(e, new);

 if (!nsym || !osym) {
  pr_err("VDSO32: Missing symbols.\n");
  return -ENODEV;
 }
 osym->st_value = nsym->st_value;
 osym->st_size = nsym->st_size;
 osym->st_info = nsym->st_info;
 osym->st_other = nsym->st_other;
 osym->st_shndx = nsym->st_shndx;

 return 0;
}
