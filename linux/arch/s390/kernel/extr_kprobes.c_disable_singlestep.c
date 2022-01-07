
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long addr; int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;
struct kprobe_ctlblk {int kprobe_saved_imask; int kprobe_saved_ctl; } ;


 int PSW_MASK_PER ;
 int __ctl_load (int ,int,int) ;

__attribute__((used)) static void disable_singlestep(struct kprobe_ctlblk *kcb,
          struct pt_regs *regs,
          unsigned long ip)
{

 __ctl_load(kcb->kprobe_saved_ctl, 9, 11);
 regs->psw.mask &= ~PSW_MASK_PER;
 regs->psw.mask |= kcb->kprobe_saved_imask;
 regs->psw.addr = ip;
}
