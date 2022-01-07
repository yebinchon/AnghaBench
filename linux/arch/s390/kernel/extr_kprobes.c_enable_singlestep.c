
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; unsigned long addr; } ;
struct pt_regs {TYPE_1__ psw; } ;
struct per_regs {unsigned long start; unsigned long end; int control; } ;
struct kprobe_ctlblk {int kprobe_saved_imask; int kprobe_saved_ctl; } ;


 int PER_EVENT_IFETCH ;
 int PSW_MASK_EXT ;
 int PSW_MASK_IO ;
 int PSW_MASK_PER ;
 int __ctl_load (struct per_regs,int,int) ;
 int __ctl_store (int ,int,int) ;

__attribute__((used)) static void enable_singlestep(struct kprobe_ctlblk *kcb,
         struct pt_regs *regs,
         unsigned long ip)
{
 struct per_regs per_kprobe;


 per_kprobe.control = PER_EVENT_IFETCH;
 per_kprobe.start = ip;
 per_kprobe.end = ip;


 __ctl_store(kcb->kprobe_saved_ctl, 9, 11);
 kcb->kprobe_saved_imask = regs->psw.mask &
  (PSW_MASK_PER | PSW_MASK_IO | PSW_MASK_EXT);


 __ctl_load(per_kprobe, 9, 11);
 regs->psw.mask |= PSW_MASK_PER;
 regs->psw.mask &= ~(PSW_MASK_IO | PSW_MASK_EXT);
 regs->psw.addr = ip;
}
