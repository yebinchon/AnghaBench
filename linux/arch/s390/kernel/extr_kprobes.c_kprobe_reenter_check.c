
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe_ctlblk {int kprobe_status; } ;
struct kprobe {int dummy; } ;


 int BUG () ;




 int dump_kprobe (struct kprobe*) ;
 int kprobes_inc_nmissed_count (struct kprobe*) ;
 int pr_err (char*) ;

__attribute__((used)) static void kprobe_reenter_check(struct kprobe_ctlblk *kcb, struct kprobe *p)
{
 switch (kcb->kprobe_status) {
 case 129:
 case 131:
  kprobes_inc_nmissed_count(p);
  break;
 case 130:
 case 128:
 default:





  pr_err("Invalid kprobe detected.\n");
  dump_kprobe(p);
  BUG();
 }
}
