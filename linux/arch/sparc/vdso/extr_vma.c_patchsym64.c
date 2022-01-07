
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vdso_elfinfo64 {int dummy; } ;
struct TYPE_4__ {struct vdso_elfinfo64 elf64; } ;
struct vdso_elfinfo {TYPE_1__ u; } ;
struct TYPE_5__ {int st_shndx; int st_other; int st_info; int st_size; int st_value; } ;
typedef TYPE_2__ Elf64_Sym ;


 int ENODEV ;
 TYPE_2__* find_sym64 (struct vdso_elfinfo64*,char const*) ;
 int pr_err (char*) ;

__attribute__((used)) static int patchsym64(struct vdso_elfinfo *_e, const char *orig,
        const char *new)
{
 struct vdso_elfinfo64 *e = &_e->u.elf64;
 Elf64_Sym *osym = find_sym64(e, orig);
 Elf64_Sym *nsym = find_sym64(e, new);

 if (!nsym || !osym) {
  pr_err("VDSO64: Missing symbols.\n");
  return -ENODEV;
 }
 osym->st_value = nsym->st_value;
 osym->st_size = nsym->st_size;
 osym->st_info = nsym->st_info;
 osym->st_other = nsym->st_other;
 osym->st_shndx = nsym->st_shndx;

 return 0;
}
