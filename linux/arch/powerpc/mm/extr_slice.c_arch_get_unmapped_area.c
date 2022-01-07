
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int context; } ;


 TYPE_2__* current ;
 int mm_ctx_user_psize (int *) ;
 unsigned long slice_get_unmapped_area (unsigned long,unsigned long,unsigned long,int ,int ) ;

unsigned long arch_get_unmapped_area(struct file *filp,
         unsigned long addr,
         unsigned long len,
         unsigned long pgoff,
         unsigned long flags)
{
 return slice_get_unmapped_area(addr, len, flags,
           mm_ctx_user_psize(&current->mm->context), 0);
}
