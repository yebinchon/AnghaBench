
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct kprobe_ctlblk {int kprobe_status; } ;
struct kprobe {int dummy; } ;


 int BUG () ;




 int WARN_ON (int) ;
 int dump_kprobe (struct kprobe*) ;
 int kprobes_inc_nmissed_count (struct kprobe*) ;
 int pr_err (char*) ;
 int setup_singlestep (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*,int) ;

__attribute__((used)) static int reenter_kprobe(struct kprobe *p, struct pt_regs *regs,
     struct kprobe_ctlblk *kcb)
{
 switch (kcb->kprobe_status) {
 case 129:
 case 131:
 case 130:
  kprobes_inc_nmissed_count(p);
  setup_singlestep(p, regs, kcb, 1);
  break;
 case 128:






  pr_err("Unrecoverable kprobe detected.\n");
  dump_kprobe(p);
  BUG();
 default:

  WARN_ON(1);
  return 0;
 }

 return 1;
}
