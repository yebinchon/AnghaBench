
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct pt_regs {TYPE_1__ psw; } ;
struct kprobe_ctlblk {int kprobe_status; } ;
struct kprobe {int (* fault_handler ) (struct kprobe*,struct pt_regs*,int) ;scalar_t__ addr; } ;
struct exception_table_entry {int dummy; } ;






 int disable_singlestep (struct kprobe_ctlblk*,struct pt_regs*,unsigned long) ;
 int extable_fixup (struct exception_table_entry const*) ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 struct kprobe* kprobe_running () ;
 int kprobes_inc_nmissed_count (struct kprobe*) ;
 int pop_kprobe (struct kprobe_ctlblk*) ;
 int preempt_enable_no_resched () ;
 struct exception_table_entry* s390_search_extables (int ) ;
 int stub1 (struct kprobe*,struct pt_regs*,int) ;

__attribute__((used)) static int kprobe_trap_handler(struct pt_regs *regs, int trapnr)
{
 struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();
 struct kprobe *p = kprobe_running();
 const struct exception_table_entry *entry;

 switch(kcb->kprobe_status) {
 case 130:
 case 128:







  disable_singlestep(kcb, regs, (unsigned long) p->addr);
  pop_kprobe(kcb);
  preempt_enable_no_resched();
  break;
 case 131:
 case 129:





  kprobes_inc_nmissed_count(p);
  if (p->fault_handler && p->fault_handler(p, regs, trapnr))
   return 1;





  entry = s390_search_extables(regs->psw.addr);
  if (entry) {
   regs->psw.addr = extable_fixup(entry);
   return 1;
  }





  break;
 default:
  break;
 }
 return 0;
}
