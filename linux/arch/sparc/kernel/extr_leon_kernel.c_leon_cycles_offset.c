
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* e; } ;
struct TYPE_3__ {int val; int ctrl; int rld; } ;


 int LEON3_BYPASS_LOAD_PA (int *) ;
 scalar_t__ LEON3_GPTIMER_CTRL_ISPENDING (int) ;
 size_t leon3_gptimer_idx ;
 TYPE_2__* leon3_gptimer_regs ;

__attribute__((used)) static u32 leon_cycles_offset(void)
{
 u32 rld, val, ctrl, off;

 rld = LEON3_BYPASS_LOAD_PA(&leon3_gptimer_regs->e[leon3_gptimer_idx].rld);
 val = LEON3_BYPASS_LOAD_PA(&leon3_gptimer_regs->e[leon3_gptimer_idx].val);
 ctrl = LEON3_BYPASS_LOAD_PA(&leon3_gptimer_regs->e[leon3_gptimer_idx].ctrl);
 if (LEON3_GPTIMER_CTRL_ISPENDING(ctrl)) {
  val = LEON3_BYPASS_LOAD_PA(&leon3_gptimer_regs->e[leon3_gptimer_idx].val);
  off = 2 * rld - val;
 } else {
  off = rld - val;
 }

 return off;
}
