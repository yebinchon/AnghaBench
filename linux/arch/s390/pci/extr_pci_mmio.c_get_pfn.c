
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_flags; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 long EACCES ;
 long EINVAL ;
 TYPE_2__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (TYPE_1__*,unsigned long) ;
 long follow_pfn (struct vm_area_struct*,unsigned long,unsigned long*) ;
 int up_read (int *) ;

__attribute__((used)) static long get_pfn(unsigned long user_addr, unsigned long access,
      unsigned long *pfn)
{
 struct vm_area_struct *vma;
 long ret;

 down_read(&current->mm->mmap_sem);
 ret = -EINVAL;
 vma = find_vma(current->mm, user_addr);
 if (!vma)
  goto out;
 ret = -EACCES;
 if (!(vma->vm_flags & access))
  goto out;
 ret = follow_pfn(vma, user_addr, pfn);
out:
 up_read(&current->mm->mmap_sem);
 return ret;
}
