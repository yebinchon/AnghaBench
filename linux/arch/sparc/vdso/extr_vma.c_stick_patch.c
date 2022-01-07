
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdso_image {int dummy; } ;
struct vdso_elfinfo {int dummy; } ;


 int find_sections (struct vdso_image const*,struct vdso_elfinfo*,int) ;
 int patch_one_symbol (struct vdso_elfinfo*,char*,char*,int) ;

__attribute__((used)) static int stick_patch(const struct vdso_image *image, struct vdso_elfinfo *e, bool elf64)
{
 int err;

 err = find_sections(image, e, elf64);
 if (err)
  return err;

 err = patch_one_symbol(e,
          "__vdso_gettimeofday",
          "__vdso_gettimeofday_stick", elf64);
 if (err)
  return err;

 return patch_one_symbol(e,
    "__vdso_clock_gettime",
    "__vdso_clock_gettime_stick", elf64);
 return 0;
}
