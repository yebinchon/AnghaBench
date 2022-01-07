
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {char* data; } ;
struct mc_request {TYPE_1__ request; } ;


 struct task_struct* find_task_by_pid_ns (int,int *) ;
 int init_pid_ns ;
 int mconsole_reply (struct mc_request*,char*,int,int ) ;
 char* skip_spaces (char*) ;
 scalar_t__ sscanf (char*,char*,int*) ;
 int stack_proc ;
 int strlen (char*) ;
 int with_console (struct mc_request*,int ,struct task_struct*) ;

void mconsole_stack(struct mc_request *req)
{
 char *ptr = req->request.data;
 int pid_requested= -1;
 struct task_struct *to = ((void*)0);







 ptr += strlen("stack");
 ptr = skip_spaces(ptr);





 if (sscanf(ptr, "%d", &pid_requested) == 0) {
  mconsole_reply(req, "Please specify a pid", 1, 0);
  return;
 }

 to = find_task_by_pid_ns(pid_requested, &init_pid_ns);
 if ((to == ((void*)0)) || (pid_requested == 0)) {
  mconsole_reply(req, "Couldn't find that pid", 1, 0);
  return;
 }
 with_console(req, stack_proc, to);
}
