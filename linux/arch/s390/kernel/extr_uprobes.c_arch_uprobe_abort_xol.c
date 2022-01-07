
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int addr; } ;
struct pt_regs {TYPE_1__ psw; int int_code; } ;
struct arch_uprobe {int saved_int_code; } ;
struct TYPE_7__ {int address; } ;
struct TYPE_8__ {TYPE_2__ per_event; } ;
struct TYPE_10__ {TYPE_4__* utask; TYPE_3__ thread; } ;
struct TYPE_9__ {int vaddr; } ;


 int TIF_UPROBE_SINGLESTEP ;
 int clear_thread_flag (int ) ;
 TYPE_5__* current ;

void arch_uprobe_abort_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 clear_thread_flag(TIF_UPROBE_SINGLESTEP);
 regs->int_code = auprobe->saved_int_code;
 regs->psw.addr = current->utask->vaddr;
 current->thread.per_event.address = current->utask->vaddr;
}
