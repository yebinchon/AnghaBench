
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PT_SR ;
 unsigned long T1_BIT ;
 int TIF_DELAYED_TRACE ;
 unsigned long TRACE_BITS ;
 unsigned long get_reg (struct task_struct*,int ) ;
 int put_reg (struct task_struct*,int ,unsigned long) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;

void user_enable_single_step(struct task_struct *child)
{
 unsigned long tmp = get_reg(child, PT_SR) & ~TRACE_BITS;
 put_reg(child, PT_SR, tmp | T1_BIT);
 set_tsk_thread_flag(child, TIF_DELAYED_TRACE);
}
