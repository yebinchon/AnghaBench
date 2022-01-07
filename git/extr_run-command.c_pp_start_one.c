
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct parallel_processes {int max_processes; int (* get_next_task ) (TYPE_3__*,int *,int ,int *) ;int (* start_failure ) (int *,int ,int ) ;int shutdown; TYPE_2__* children; TYPE_1__* pfd; int nr_processes; int buffered_output; int data; } ;
struct TYPE_7__ {int err; int stdout_to_stderr; int no_stdin; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_3__ process; int err; int data; } ;
struct TYPE_5__ {int fd; } ;


 int BUG (char*) ;
 scalar_t__ GIT_CP_FREE ;
 scalar_t__ GIT_CP_WORKING ;
 scalar_t__ start_command (TYPE_3__*) ;
 int strbuf_addbuf (int *,int *) ;
 int strbuf_reset (int *) ;
 int stub1 (TYPE_3__*,int *,int ,int *) ;
 int stub2 (int *,int ,int ) ;

__attribute__((used)) static int pp_start_one(struct parallel_processes *pp)
{
 int i, code;

 for (i = 0; i < pp->max_processes; i++)
  if (pp->children[i].state == GIT_CP_FREE)
   break;
 if (i == pp->max_processes)
  BUG("bookkeeping is hard");

 code = pp->get_next_task(&pp->children[i].process,
     &pp->children[i].err,
     pp->data,
     &pp->children[i].data);
 if (!code) {
  strbuf_addbuf(&pp->buffered_output, &pp->children[i].err);
  strbuf_reset(&pp->children[i].err);
  return 1;
 }
 pp->children[i].process.err = -1;
 pp->children[i].process.stdout_to_stderr = 1;
 pp->children[i].process.no_stdin = 1;

 if (start_command(&pp->children[i].process)) {
  code = pp->start_failure(&pp->children[i].err,
      pp->data,
      pp->children[i].data);
  strbuf_addbuf(&pp->buffered_output, &pp->children[i].err);
  strbuf_reset(&pp->children[i].err);
  if (code)
   pp->shutdown = 1;
  return code;
 }

 pp->nr_processes++;
 pp->children[i].state = GIT_CP_WORKING;
 pp->pfd[i].fd = pp->children[i].process.err;
 return 0;
}
