
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct parallel_processes {int max_processes; TYPE_2__* children; TYPE_3__* pfd; } ;
struct TYPE_6__ {int revents; } ;
struct TYPE_4__ {int err; } ;
struct TYPE_5__ {scalar_t__ state; TYPE_1__ process; int err; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ GIT_CP_WAIT_CLEANUP ;
 scalar_t__ GIT_CP_WORKING ;
 int POLLHUP ;
 int POLLIN ;
 int close (int ) ;
 int die_errno (char*) ;
 scalar_t__ errno ;
 int poll (TYPE_3__*,int,int) ;
 int pp_cleanup (struct parallel_processes*) ;
 int strbuf_read_once (int *,int ,int ) ;

__attribute__((used)) static void pp_buffer_stderr(struct parallel_processes *pp, int output_timeout)
{
 int i;

 while ((i = poll(pp->pfd, pp->max_processes, output_timeout)) < 0) {
  if (errno == EINTR)
   continue;
  pp_cleanup(pp);
  die_errno("poll");
 }


 for (i = 0; i < pp->max_processes; i++) {
  if (pp->children[i].state == GIT_CP_WORKING &&
      pp->pfd[i].revents & (POLLIN | POLLHUP)) {
   int n = strbuf_read_once(&pp->children[i].err,
       pp->children[i].process.err, 0);
   if (n == 0) {
    close(pp->children[i].process.err);
    pp->children[i].state = GIT_CP_WAIT_CLEANUP;
   } else if (n < 0)
    if (errno != EAGAIN)
     die_errno("read");
  }
 }
}
