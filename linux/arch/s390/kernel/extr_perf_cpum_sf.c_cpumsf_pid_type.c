
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct perf_event {int ns; struct perf_event* parent; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int __task_pid_nr_ns (struct task_struct*,int,int ) ;
 struct task_struct* find_task_by_pid_ns (int,int *) ;
 int init_pid_ns ;
 int pid_alive (struct task_struct*) ;

__attribute__((used)) static u32 cpumsf_pid_type(struct perf_event *event,
      u32 pid, enum pid_type type)
{
 struct task_struct *tsk;


 if (!pid)
  goto out;

 tsk = find_task_by_pid_ns(pid, &init_pid_ns);
 pid = -1;
 if (tsk) {




  if (event->parent)
   event = event->parent;
  pid = __task_pid_nr_ns(tsk, type, event->ns);




  if (!pid && !pid_alive(tsk))
   pid = -1;
 }
out:
 return pid;
}
