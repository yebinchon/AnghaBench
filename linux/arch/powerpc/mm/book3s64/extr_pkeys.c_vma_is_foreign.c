
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; } ;
struct TYPE_2__ {scalar_t__ mm; } ;


 TYPE_1__* current ;

__attribute__((used)) static inline bool vma_is_foreign(struct vm_area_struct *vma)
{
 if (!current->mm)
  return 1;


 if (current->mm != vma->vm_mm)
  return 1;

 return 0;
}
