
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r31; int r63; } ;
struct unwind_frame_info {TYPE_1__ regs; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 unsigned int UNW_PC (struct unwind_frame_info*) ;
 int __kernel_text_address (unsigned int) ;
 int arc_unwind (struct unwind_frame_info*) ;
 int pr_warn_once (char*) ;
 int seed_unwind_frame_info (struct task_struct*,struct pt_regs*,struct unwind_frame_info*) ;

unsigned int
arc_unwind_core(struct task_struct *tsk, struct pt_regs *regs,
  int (*consumer_fn) (unsigned int, void *), void *arg)
{
 pr_warn_once("CONFIG_ARC_DW2_UNWIND needs to be enabled\n");
 return 0;


}
