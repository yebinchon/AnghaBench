
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_frame_info {int dummy; } ;
struct task_struct {scalar_t__ state; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 int unw_get_ip (struct unw_frame_info*,unsigned long*) ;
 int unw_init_from_blocked_task (struct unw_frame_info*,struct task_struct*) ;
 scalar_t__ unw_unwind (struct unw_frame_info*) ;

unsigned long
get_wchan (struct task_struct *p)
{
 struct unw_frame_info info;
 unsigned long ip;
 int count = 0;

 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;
 unw_init_from_blocked_task(&info, p);
 do {
  if (p->state == TASK_RUNNING)
   return 0;
  if (unw_unwind(&info) < 0)
   return 0;
  unw_get_ip(&info, &ip);
  if (!in_sched_functions(ip))
   return ip;
 } while (count++ < 16);
 return 0;
}
