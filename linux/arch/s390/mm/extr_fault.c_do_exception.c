
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct TYPE_3__ {unsigned long gmap_addr; int gmap_write_flag; int gmap_int_code; int gmap_pfault; } ;
struct task_struct {TYPE_1__ thread; int min_flt; int maj_flt; struct mm_struct* mm; } ;
struct pt_regs {unsigned long int_parm_long; int int_code; } ;
struct mm_struct {int mmap_sem; } ;
struct gmap {scalar_t__ pfault_enabled; } ;
typedef enum fault_type { ____Placeholder_fault_type } fault_type ;
struct TYPE_4__ {scalar_t__ gmap; } ;


 int CONFIG_PGSTE ;
 unsigned long EFAULT ;
 unsigned long ENOMEM ;
 unsigned int FAULT_FLAG_ALLOW_RETRY ;
 unsigned int FAULT_FLAG_KILLABLE ;
 unsigned int FAULT_FLAG_RETRY_NOWAIT ;
 unsigned int FAULT_FLAG_TRIED ;
 unsigned int FAULT_FLAG_USER ;
 unsigned int FAULT_FLAG_WRITE ;

 unsigned long HPAGE_MASK ;
 scalar_t__ IS_ENABLED (int ) ;

 int PERF_COUNT_SW_PAGE_FAULTS ;
 int PERF_COUNT_SW_PAGE_FAULTS_MAJ ;
 int PERF_COUNT_SW_PAGE_FAULTS_MIN ;
 int PIF_PER_TRAP ;
 TYPE_2__ S390_lowcore ;


 int VM_FAULT_BADACCESS ;
 int VM_FAULT_BADCONTEXT ;
 int VM_FAULT_BADMAP ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_OOM ;
 int VM_FAULT_PFAULT ;
 int VM_FAULT_RETRY ;
 int VM_FAULT_SIGNAL ;
 int VM_GROWSDOWN ;
 int VM_WRITE ;
 unsigned long __FAIL_ADDR_MASK ;
 unsigned long __gmap_link (struct gmap*,unsigned long,unsigned long) ;
 unsigned long __gmap_translate (struct gmap*,unsigned long) ;
 int clear_pt_regs_flag (struct pt_regs*,int ) ;
 struct task_struct* current ;
 int down_read (int *) ;
 scalar_t__ expand_stack (struct vm_area_struct*,unsigned long) ;
 scalar_t__ fatal_signal_pending (struct task_struct*) ;
 int faulthandler_disabled () ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int get_fault_type (struct pt_regs*) ;
 int handle_mm_fault (struct vm_area_struct*,unsigned long,unsigned int) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 scalar_t__ kprobe_page_fault (struct pt_regs*,int) ;
 int perf_sw_event (int ,int,struct pt_regs*,unsigned long) ;
 unsigned long store_indication ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static inline vm_fault_t do_exception(struct pt_regs *regs, int access)
{
 struct gmap *gmap;
 struct task_struct *tsk;
 struct mm_struct *mm;
 struct vm_area_struct *vma;
 enum fault_type type;
 unsigned long trans_exc_code;
 unsigned long address;
 unsigned int flags;
 vm_fault_t fault;

 tsk = current;




 clear_pt_regs_flag(regs, PIF_PER_TRAP);

 if (kprobe_page_fault(regs, 14))
  return 0;

 mm = tsk->mm;
 trans_exc_code = regs->int_parm_long;






 fault = VM_FAULT_BADCONTEXT;
 type = get_fault_type(regs);
 switch (type) {
 case 130:
  goto out;
 case 128:
  fault = VM_FAULT_BADMAP;
  goto out;
 case 129:
 case 131:
  if (faulthandler_disabled() || !mm)
   goto out;
  break;
 }

 address = trans_exc_code & __FAIL_ADDR_MASK;
 perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);
 flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
 if (user_mode(regs))
  flags |= FAULT_FLAG_USER;
 if (access == VM_WRITE || (trans_exc_code & store_indication) == 0x400)
  flags |= FAULT_FLAG_WRITE;
 down_read(&mm->mmap_sem);

 gmap = ((void*)0);
 if (IS_ENABLED(CONFIG_PGSTE) && type == 131) {
  gmap = (struct gmap *) S390_lowcore.gmap;
  current->thread.gmap_addr = address;
  current->thread.gmap_write_flag = !!(flags & FAULT_FLAG_WRITE);
  current->thread.gmap_int_code = regs->int_code & 0xffff;
  address = __gmap_translate(gmap, address);
  if (address == -EFAULT) {
   fault = VM_FAULT_BADMAP;
   goto out_up;
  }
  if (gmap->pfault_enabled)
   flags |= FAULT_FLAG_RETRY_NOWAIT;
 }

retry:
 fault = VM_FAULT_BADMAP;
 vma = find_vma(mm, address);
 if (!vma)
  goto out_up;

 if (unlikely(vma->vm_start > address)) {
  if (!(vma->vm_flags & VM_GROWSDOWN))
   goto out_up;
  if (expand_stack(vma, address))
   goto out_up;
 }





 fault = VM_FAULT_BADACCESS;
 if (unlikely(!(vma->vm_flags & access)))
  goto out_up;

 if (is_vm_hugetlb_page(vma))
  address &= HPAGE_MASK;





 fault = handle_mm_fault(vma, address, flags);

 if ((fault & VM_FAULT_RETRY) && fatal_signal_pending(current)) {
  fault = VM_FAULT_SIGNAL;
  if (flags & FAULT_FLAG_RETRY_NOWAIT)
   goto out_up;
  goto out;
 }
 if (unlikely(fault & VM_FAULT_ERROR))
  goto out_up;






 if (flags & FAULT_FLAG_ALLOW_RETRY) {
  if (fault & VM_FAULT_MAJOR) {
   tsk->maj_flt++;
   perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
          regs, address);
  } else {
   tsk->min_flt++;
   perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
          regs, address);
  }
  if (fault & VM_FAULT_RETRY) {
   if (IS_ENABLED(CONFIG_PGSTE) && gmap &&
       (flags & FAULT_FLAG_RETRY_NOWAIT)) {


    current->thread.gmap_pfault = 1;
    fault = VM_FAULT_PFAULT;
    goto out_up;
   }


   flags &= ~(FAULT_FLAG_ALLOW_RETRY |
       FAULT_FLAG_RETRY_NOWAIT);
   flags |= FAULT_FLAG_TRIED;
   down_read(&mm->mmap_sem);
   goto retry;
  }
 }
 if (IS_ENABLED(CONFIG_PGSTE) && gmap) {
  address = __gmap_link(gmap, current->thread.gmap_addr,
           address);
  if (address == -EFAULT) {
   fault = VM_FAULT_BADMAP;
   goto out_up;
  }
  if (address == -ENOMEM) {
   fault = VM_FAULT_OOM;
   goto out_up;
  }
 }
 fault = 0;
out_up:
 up_read(&mm->mmap_sem);
out:
 return fault;
}
