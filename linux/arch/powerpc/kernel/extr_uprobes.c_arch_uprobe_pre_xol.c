
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int nip; } ;
struct arch_uprobe_task {int saved_trap_nr; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_5__ {int trap_nr; } ;
struct TYPE_7__ {TYPE_2__* utask; TYPE_1__ thread; } ;
struct TYPE_6__ {int xol_vaddr; struct arch_uprobe_task autask; } ;


 int UPROBE_TRAP_NR ;
 TYPE_3__* current ;
 int user_enable_single_step (TYPE_3__*) ;

int arch_uprobe_pre_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 struct arch_uprobe_task *autask = &current->utask->autask;

 autask->saved_trap_nr = current->thread.trap_nr;
 current->thread.trap_nr = UPROBE_TRAP_NR;
 regs->nip = current->utask->xol_vaddr;

 user_enable_single_step(current);
 return 0;
}
