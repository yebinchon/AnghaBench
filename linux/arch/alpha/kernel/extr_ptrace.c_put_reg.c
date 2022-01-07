
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long ieee_state; } ;


 unsigned long FPCR_DYN_MASK ;
 unsigned long IEEE_SW_MASK ;
 unsigned long* get_reg_addr (struct task_struct*,unsigned long) ;
 unsigned long ieee_swcr_to_fpcr (unsigned long) ;
 TYPE_1__* task_thread_info (struct task_struct*) ;

__attribute__((used)) static int
put_reg(struct task_struct *task, unsigned long regno, unsigned long data)
{
 if (regno == 63) {
  task_thread_info(task)->ieee_state
    = ((task_thread_info(task)->ieee_state & ~IEEE_SW_MASK)
       | (data & IEEE_SW_MASK));
  data = (data & FPCR_DYN_MASK) | ieee_swcr_to_fpcr(data);
 }
 *get_reg_addr(task, regno) = data;
 return 0;
}
