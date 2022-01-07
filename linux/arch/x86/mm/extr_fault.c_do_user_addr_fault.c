
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct task_struct {int min_flt; int maj_flt; struct mm_struct* mm; } ;
struct pt_regs {int flags; int ip; } ;
struct mm_struct {int mmap_sem; } ;


 int BUS_ADRERR ;
 unsigned int FAULT_FLAG_ALLOW_RETRY ;
 unsigned int FAULT_FLAG_INSTRUCTION ;
 unsigned int FAULT_FLAG_KILLABLE ;
 unsigned int FAULT_FLAG_TRIED ;
 unsigned int FAULT_FLAG_USER ;
 unsigned int FAULT_FLAG_WRITE ;
 int PERF_COUNT_SW_PAGE_FAULTS ;
 int PERF_COUNT_SW_PAGE_FAULTS_MAJ ;
 int PERF_COUNT_SW_PAGE_FAULTS_MIN ;
 int SIGBUS ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_RETRY ;
 int VM_GROWSDOWN ;
 int X86_EFLAGS_AC ;
 int X86_EFLAGS_IF ;
 int X86_FEATURE_SMAP ;
 unsigned long X86_PF_INSTR ;
 unsigned long X86_PF_RSVD ;
 unsigned long X86_PF_USER ;
 unsigned long X86_PF_WRITE ;
 int X86_TRAP_PF ;
 int access_error (unsigned long,struct vm_area_struct*) ;
 int bad_area (struct pt_regs*,unsigned long,unsigned long) ;
 int bad_area_access_error (struct pt_regs*,unsigned long,unsigned long,struct vm_area_struct*) ;
 int bad_area_nosemaphore (struct pt_regs*,unsigned long,unsigned long) ;
 int check_v8086_mode (struct pt_regs*,unsigned long,struct task_struct*) ;
 scalar_t__ cpu_feature_enabled (int ) ;
 struct task_struct* current ;
 int down_read (int *) ;
 int down_read_trylock (int *) ;
 scalar_t__ emulate_vsyscall (unsigned long,struct pt_regs*,unsigned long) ;
 int expand_stack (struct vm_area_struct*,unsigned long) ;
 int fatal_signal_pending (struct task_struct*) ;
 scalar_t__ faulthandler_disabled () ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int handle_mm_fault (struct vm_area_struct*,unsigned long,unsigned int) ;
 scalar_t__ is_vsyscall_vaddr (unsigned long) ;
 int kprobe_page_fault (struct pt_regs*,int ) ;
 scalar_t__ likely (int) ;
 int local_irq_enable () ;
 int might_sleep () ;
 int mm_fault_error (struct pt_regs*,unsigned long,unsigned long,int) ;
 int no_context (struct pt_regs*,unsigned long,unsigned long,int ,int ) ;
 int perf_sw_event (int ,int,struct pt_regs*,unsigned long) ;
 int pgtable_bad (struct pt_regs*,unsigned long,unsigned long) ;
 int search_exception_tables (int ) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static inline
void do_user_addr_fault(struct pt_regs *regs,
   unsigned long hw_error_code,
   unsigned long address)
{
 struct vm_area_struct *vma;
 struct task_struct *tsk;
 struct mm_struct *mm;
 vm_fault_t fault, major = 0;
 unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;

 tsk = current;
 mm = tsk->mm;


 if (unlikely(kprobe_page_fault(regs, X86_TRAP_PF)))
  return;





 if (unlikely(hw_error_code & X86_PF_RSVD))
  pgtable_bad(regs, hw_error_code, address);
 if (unlikely(cpu_feature_enabled(X86_FEATURE_SMAP) &&
       !(hw_error_code & X86_PF_USER) &&
       !(regs->flags & X86_EFLAGS_AC)))
 {
  bad_area_nosemaphore(regs, hw_error_code, address);
  return;
 }





 if (unlikely(faulthandler_disabled() || !mm)) {
  bad_area_nosemaphore(regs, hw_error_code, address);
  return;
 }
 if (user_mode(regs)) {
  local_irq_enable();
  flags |= FAULT_FLAG_USER;
 } else {
  if (regs->flags & X86_EFLAGS_IF)
   local_irq_enable();
 }

 perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);

 if (hw_error_code & X86_PF_WRITE)
  flags |= FAULT_FLAG_WRITE;
 if (hw_error_code & X86_PF_INSTR)
  flags |= FAULT_FLAG_INSTRUCTION;
 if (unlikely(!down_read_trylock(&mm->mmap_sem))) {
  if (!user_mode(regs) && !search_exception_tables(regs->ip)) {




   bad_area_nosemaphore(regs, hw_error_code, address);
   return;
  }
retry:
  down_read(&mm->mmap_sem);
 } else {





  might_sleep();
 }

 vma = find_vma(mm, address);
 if (unlikely(!vma)) {
  bad_area(regs, hw_error_code, address);
  return;
 }
 if (likely(vma->vm_start <= address))
  goto good_area;
 if (unlikely(!(vma->vm_flags & VM_GROWSDOWN))) {
  bad_area(regs, hw_error_code, address);
  return;
 }
 if (unlikely(expand_stack(vma, address))) {
  bad_area(regs, hw_error_code, address);
  return;
 }





good_area:
 if (unlikely(access_error(hw_error_code, vma))) {
  bad_area_access_error(regs, hw_error_code, address, vma);
  return;
 }
 fault = handle_mm_fault(vma, address, flags);
 major |= fault & VM_FAULT_MAJOR;






 if (unlikely(fault & VM_FAULT_RETRY)) {

  if (flags & FAULT_FLAG_ALLOW_RETRY) {
   flags &= ~FAULT_FLAG_ALLOW_RETRY;
   flags |= FAULT_FLAG_TRIED;
   if (!fatal_signal_pending(tsk))
    goto retry;
  }


  if (flags & FAULT_FLAG_USER)
   return;


  no_context(regs, hw_error_code, address, SIGBUS, BUS_ADRERR);
  return;
 }

 up_read(&mm->mmap_sem);
 if (unlikely(fault & VM_FAULT_ERROR)) {
  mm_fault_error(regs, hw_error_code, address, fault);
  return;
 }





 if (major) {
  tsk->maj_flt++;
  perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1, regs, address);
 } else {
  tsk->min_flt++;
  perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1, regs, address);
 }

 check_v8086_mode(regs, address, tsk);
}
