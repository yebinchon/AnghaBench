
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int __bad_area_nosemaphore (struct pt_regs*,unsigned long,int) ;
 TYPE_1__* current ;
 int up_read (int *) ;

__attribute__((used)) static int __bad_area(struct pt_regs *regs, unsigned long address, int si_code)
{
 struct mm_struct *mm = current->mm;





 up_read(&mm->mmap_sem);

 return __bad_area_nosemaphore(regs, address, si_code);
}
