
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_to_clean {struct child_to_clean* next; struct child_process* process; int pid; } ;
struct child_process {int dummy; } ;
typedef int pid_t ;


 int atexit (int ) ;
 struct child_to_clean* children_to_clean ;
 int cleanup_children_on_exit ;
 int cleanup_children_on_signal ;
 int installed_child_cleanup_handler ;
 int sigchain_push_common (int ) ;
 struct child_to_clean* xmalloc (int) ;

__attribute__((used)) static void mark_child_for_cleanup(pid_t pid, struct child_process *process)
{
 struct child_to_clean *p = xmalloc(sizeof(*p));
 p->pid = pid;
 p->process = process;
 p->next = children_to_clean;
 children_to_clean = p;

 if (!installed_child_cleanup_handler) {
  atexit(cleanup_children_on_exit);
  sigchain_push_common(cleanup_children_on_signal);
  installed_child_cleanup_handler = 1;
 }
}
