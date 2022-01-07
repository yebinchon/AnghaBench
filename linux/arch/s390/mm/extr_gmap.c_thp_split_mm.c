
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; struct vm_area_struct* vm_next; } ;
struct mm_struct {int def_flags; struct vm_area_struct* mmap; } ;


 int FOLL_SPLIT ;
 scalar_t__ PAGE_SIZE ;
 int VM_HUGEPAGE ;
 int VM_NOHUGEPAGE ;
 int follow_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static inline void thp_split_mm(struct mm_struct *mm)
{
}
