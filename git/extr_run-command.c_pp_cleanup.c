
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parallel_processes {int max_processes; int buffered_output; TYPE_1__* pfd; TYPE_1__* children; } ;
struct TYPE_2__ {int process; int err; } ;


 int child_process_clear (int *) ;
 int free (TYPE_1__*) ;
 int sigchain_pop_common () ;
 int stderr ;
 int strbuf_release (int *) ;
 int strbuf_write (int *,int ) ;
 int trace_printf (char*) ;

__attribute__((used)) static void pp_cleanup(struct parallel_processes *pp)
{
 int i;

 trace_printf("run_processes_parallel: done");
 for (i = 0; i < pp->max_processes; i++) {
  strbuf_release(&pp->children[i].err);
  child_process_clear(&pp->children[i].process);
 }

 free(pp->children);
 free(pp->pfd);





 strbuf_write(&pp->buffered_output, stderr);
 strbuf_release(&pp->buffered_output);

 sigchain_pop_common();
}
