
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdso_image {int data; } ;
struct vdso_elfinfo32 {void* dynstr; void* dynsym; int dynsymsize; int hdr; } ;
struct TYPE_2__ {struct vdso_elfinfo32 elf32; } ;
struct vdso_elfinfo {TYPE_1__ u; } ;


 int ENODEV ;
 void* one_section32 (struct vdso_elfinfo32*,char*,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int find_sections32(const struct vdso_image *image, struct vdso_elfinfo *_e)
{
 struct vdso_elfinfo32 *e = &_e->u.elf32;

 e->hdr = image->data;
 e->dynsym = one_section32(e, ".dynsym", &e->dynsymsize);
 e->dynstr = one_section32(e, ".dynstr", ((void*)0));

 if (!e->dynsym || !e->dynstr) {
  pr_err("VDSO32: Missing symbol sections.\n");
  return -ENODEV;
 }
 return 0;
}
