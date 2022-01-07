
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int addr; } ;
struct pt_regs {TYPE_5__ psw; int int_code; } ;
struct arch_uprobe {int saved_int_code; int saved_per; } ;
struct TYPE_9__ {scalar_t__ eaba; int per; } ;
struct TYPE_8__ {TYPE_1__* utask; } ;
struct TYPE_7__ {int xol_vaddr; } ;


 int EINVAL ;
 int PIF_PER_TRAP ;
 scalar_t__ PSW_BITS_AMODE_24BIT ;
 scalar_t__ PSW_BITS_AMODE_31BIT ;
 int TIF_UPROBE_SINGLESTEP ;
 int UPROBE_TRAP_NR ;
 int clear_pt_regs_flag (struct pt_regs*,int ) ;
 TYPE_2__* current ;
 int is_compat_task () ;
 TYPE_4__ psw_bits (TYPE_5__) ;
 int set_tsk_thread_flag (TYPE_2__*,int ) ;
 int update_cr_regs (TYPE_2__*) ;

int arch_uprobe_pre_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 if (psw_bits(regs->psw).eaba == PSW_BITS_AMODE_24BIT)
  return -EINVAL;
 if (!is_compat_task() && psw_bits(regs->psw).eaba == PSW_BITS_AMODE_31BIT)
  return -EINVAL;
 clear_pt_regs_flag(regs, PIF_PER_TRAP);
 auprobe->saved_per = psw_bits(regs->psw).per;
 auprobe->saved_int_code = regs->int_code;
 regs->int_code = UPROBE_TRAP_NR;
 regs->psw.addr = current->utask->xol_vaddr;
 set_tsk_thread_flag(current, TIF_UPROBE_SINGLESTEP);
 update_cr_regs(current);
 return 0;
}
