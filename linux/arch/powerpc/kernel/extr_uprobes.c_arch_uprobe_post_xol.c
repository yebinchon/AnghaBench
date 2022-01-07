
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ saved_trap_nr; } ;
struct uprobe_task {scalar_t__ vaddr; TYPE_2__ autask; } ;
struct pt_regs {scalar_t__ nip; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_5__ {scalar_t__ trap_nr; } ;
struct TYPE_7__ {TYPE_1__ thread; struct uprobe_task* utask; } ;


 scalar_t__ MAX_UINSN_BYTES ;
 scalar_t__ UPROBE_TRAP_NR ;
 int WARN_ON_ONCE (int) ;
 TYPE_3__* current ;
 int user_disable_single_step (TYPE_3__*) ;

int arch_uprobe_post_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;

 WARN_ON_ONCE(current->thread.trap_nr != UPROBE_TRAP_NR);

 current->thread.trap_nr = utask->autask.saved_trap_nr;
 regs->nip = utask->vaddr + MAX_UINSN_BYTES;

 user_disable_single_step(current);
 return 0;
}
