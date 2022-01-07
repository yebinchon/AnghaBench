
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long ieee_state; } ;


 unsigned long IEEE_SW_MASK ;
 unsigned long* get_reg_addr (struct task_struct*,unsigned long) ;
 unsigned long swcr_update_status (unsigned long,unsigned long) ;
 TYPE_1__* task_thread_info (struct task_struct*) ;

__attribute__((used)) static unsigned long
get_reg(struct task_struct * task, unsigned long regno)
{

 if (regno == 63) {
  unsigned long fpcr = *get_reg_addr(task, regno);
  unsigned long swcr
    = task_thread_info(task)->ieee_state & IEEE_SW_MASK;
  swcr = swcr_update_status(swcr, fpcr);
  return fpcr | swcr;
 }
 return *get_reg_addr(task, regno);
}
