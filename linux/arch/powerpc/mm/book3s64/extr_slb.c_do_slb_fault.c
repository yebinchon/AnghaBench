
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int msr; } ;
struct mm_struct {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int in_kernel_slb_handler; } ;


 int BUG_ON (int) ;
 long EFAULT ;
 long EINVAL ;
 unsigned long LINEAR_MAP_REGION_ID ;
 int MSR_EE ;
 int MSR_RI ;
 int VM_WARN_ON (int) ;
 TYPE_2__* current ;
 int current_thread_info () ;
 unsigned long get_region_id (unsigned long) ;
 TYPE_1__* local_paca ;
 int mfmsr () ;
 int preload_add (int ,unsigned long) ;
 long slb_allocate_kernel (unsigned long,unsigned long) ;
 long slb_allocate_user (struct mm_struct*,unsigned long) ;
 scalar_t__ unlikely (int) ;

long do_slb_fault(struct pt_regs *regs, unsigned long ea)
{
 unsigned long id = get_region_id(ea);


 VM_WARN_ON(mfmsr() & MSR_EE);

 if (unlikely(!(regs->msr & MSR_RI)))
  return -EINVAL;
 if (id >= LINEAR_MAP_REGION_ID) {
  long err;





  err = slb_allocate_kernel(ea, id);



  return err;
 } else {
  struct mm_struct *mm = current->mm;
  long err;

  if (unlikely(!mm))
   return -EFAULT;

  err = slb_allocate_user(mm, ea);
  if (!err)
   preload_add(current_thread_info(), ea);

  return err;
 }
}
