
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int saved_trap_nr; } ;
struct uprobe_task {TYPE_2__ autask; } ;
struct pt_regs {int cp0_epc; } ;
struct arch_uprobe {int resume_epc; } ;
struct TYPE_4__ {int trap_nr; } ;
struct TYPE_6__ {TYPE_1__ thread; struct uprobe_task* utask; } ;


 TYPE_3__* current ;

int arch_uprobe_post_xol(struct arch_uprobe *aup, struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;

 current->thread.trap_nr = utask->autask.saved_trap_nr;
 regs->cp0_epc = aup->resume_epc;

 return 0;
}
