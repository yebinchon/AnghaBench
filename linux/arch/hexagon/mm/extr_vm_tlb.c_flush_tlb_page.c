
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct TYPE_5__ {scalar_t__ ptbase; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_8__ {TYPE_3__* active_mm; } ;
struct TYPE_6__ {scalar_t__ ptbase; } ;
struct TYPE_7__ {TYPE_2__ context; } ;


 int PAGE_SIZE ;
 int __vmclrmap (void*,int ) ;
 TYPE_4__* current ;

void flush_tlb_page(struct vm_area_struct *vma, unsigned long vaddr)
{
 struct mm_struct *mm = vma->vm_mm;

 if (mm->context.ptbase == current->active_mm->context.ptbase)
  __vmclrmap((void *)vaddr, PAGE_SIZE);
}
