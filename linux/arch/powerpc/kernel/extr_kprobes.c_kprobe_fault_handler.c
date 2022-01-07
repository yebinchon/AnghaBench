
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long nip; int msr; } ;
struct kprobe_ctlblk {int kprobe_status; int kprobe_saved_msr; } ;
struct kprobe {int (* fault_handler ) (struct kprobe*,struct pt_regs*,int) ;scalar_t__ addr; } ;
struct exception_table_entry {int dummy; } ;






 int MSR_SINGLESTEP ;
 unsigned long extable_fixup (struct exception_table_entry const*) ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 struct kprobe* kprobe_running () ;
 int kprobes_inc_nmissed_count (struct kprobe*) ;
 int preempt_enable_no_resched () ;
 int reset_current_kprobe () ;
 int restore_previous_kprobe (struct kprobe_ctlblk*) ;
 struct exception_table_entry* search_exception_tables (unsigned long) ;
 int stub1 (struct kprobe*,struct pt_regs*,int) ;

int kprobe_fault_handler(struct pt_regs *regs, int trapnr)
{
 struct kprobe *cur = kprobe_running();
 struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();
 const struct exception_table_entry *entry;

 switch(kcb->kprobe_status) {
 case 130:
 case 128:







  regs->nip = (unsigned long)cur->addr;
  regs->msr &= ~MSR_SINGLESTEP;
  regs->msr |= kcb->kprobe_saved_msr;
  if (kcb->kprobe_status == 128)
   restore_previous_kprobe(kcb);
  else
   reset_current_kprobe();
  preempt_enable_no_resched();
  break;
 case 131:
 case 129:





  kprobes_inc_nmissed_count(cur);
  if (cur->fault_handler && cur->fault_handler(cur, regs, trapnr))
   return 1;





  if ((entry = search_exception_tables(regs->nip)) != ((void*)0)) {
   regs->nip = extable_fixup(entry);
   return 1;
  }





  break;
 default:
  break;
 }
 return 0;
}
