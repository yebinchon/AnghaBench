
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PT_SR ;
 int TIF_DELAYED_TRACE ;
 unsigned long TRACE_BITS ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 unsigned long get_reg (struct task_struct*,int ) ;
 int put_reg (struct task_struct*,int ,unsigned long) ;

__attribute__((used)) static inline void singlestep_disable(struct task_struct *child)
{
 unsigned long tmp = get_reg(child, PT_SR) & ~TRACE_BITS;
 put_reg(child, PT_SR, tmp);
 clear_tsk_thread_flag(child, TIF_DELAYED_TRACE);
}
