
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; } ;
struct vdso_image {unsigned long sym_int80_landing_pad; } ;
struct pt_regs {unsigned long ip; } ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_4__ {scalar_t__ vdso; } ;
struct TYPE_5__ {TYPE_1__ context; } ;


 TYPE_3__* current ;
 struct pt_regs* current_pt_regs () ;
 scalar_t__ in_ia32_syscall () ;
 struct vdso_image const vdso_image_32 ;

__attribute__((used)) static void vdso_fix_landing(const struct vdso_image *image,
  struct vm_area_struct *new_vma)
{
}
