
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parallel_processes {int max_processes; scalar_t__ nr_processes; int (* task_finished ) (int,int *,int ,int ) ;int output_owner; TYPE_2__* children; int buffered_output; TYPE_1__* pfd; int data; } ;
struct TYPE_4__ {scalar_t__ state; int err; int process; int data; } ;
struct TYPE_3__ {int fd; } ;


 scalar_t__ GIT_CP_FREE ;
 scalar_t__ GIT_CP_WAIT_CLEANUP ;
 scalar_t__ GIT_CP_WORKING ;
 int child_process_init (int *) ;
 int finish_command (int *) ;
 int stderr ;
 int strbuf_addbuf (int *,int *) ;
 int strbuf_reset (int *) ;
 int strbuf_write (int *,int ) ;
 int stub1 (int,int *,int ,int ) ;

__attribute__((used)) static int pp_collect_finished(struct parallel_processes *pp)
{
 int i, code;
 int n = pp->max_processes;
 int result = 0;

 while (pp->nr_processes > 0) {
  for (i = 0; i < pp->max_processes; i++)
   if (pp->children[i].state == GIT_CP_WAIT_CLEANUP)
    break;
  if (i == pp->max_processes)
   break;

  code = finish_command(&pp->children[i].process);

  code = pp->task_finished(code,
      &pp->children[i].err, pp->data,
      pp->children[i].data);

  if (code)
   result = code;
  if (code < 0)
   break;

  pp->nr_processes--;
  pp->children[i].state = GIT_CP_FREE;
  pp->pfd[i].fd = -1;
  child_process_init(&pp->children[i].process);

  if (i != pp->output_owner) {
   strbuf_addbuf(&pp->buffered_output, &pp->children[i].err);
   strbuf_reset(&pp->children[i].err);
  } else {
   strbuf_write(&pp->children[i].err, stderr);
   strbuf_reset(&pp->children[i].err);


   strbuf_write(&pp->buffered_output, stderr);
   strbuf_reset(&pp->buffered_output);
   for (i = 0; i < n; i++)
    if (pp->children[(pp->output_owner + i) % n].state == GIT_CP_WORKING)
     break;
   pp->output_owner = (pp->output_owner + i) % n;
  }
 }
 return result;
}
