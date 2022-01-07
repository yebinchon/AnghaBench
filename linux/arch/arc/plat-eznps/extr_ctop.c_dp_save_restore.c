
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eznps_dp {void* gpa1; void* eflags; } ;
struct TYPE_2__ {struct eznps_dp dp; } ;
struct task_struct {TYPE_1__ thread; } ;


 int CTOP_AUX_EFLAGS ;
 int CTOP_AUX_GPA1 ;
 void* read_aux_reg (int ) ;
 int write_aux_reg (int ,void*) ;

void dp_save_restore(struct task_struct *prev, struct task_struct *next)
{
 struct eznps_dp *prev_task_dp = &prev->thread.dp;
 struct eznps_dp *next_task_dp = &next->thread.dp;


 prev_task_dp->eflags = read_aux_reg(CTOP_AUX_EFLAGS);
 write_aux_reg(CTOP_AUX_EFLAGS, next_task_dp->eflags);

 prev_task_dp->gpa1 = read_aux_reg(CTOP_AUX_GPA1);
 write_aux_reg(CTOP_AUX_GPA1, next_task_dp->gpa1);
}
