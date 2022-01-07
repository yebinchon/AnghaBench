
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parallel_processes {int max_processes; TYPE_2__* children; } ;
struct TYPE_3__ {int pid; } ;
struct TYPE_4__ {scalar_t__ state; TYPE_1__ process; } ;


 scalar_t__ GIT_CP_WORKING ;
 int kill (int ,int) ;

__attribute__((used)) static void kill_children(struct parallel_processes *pp, int signo)
{
 int i, n = pp->max_processes;

 for (i = 0; i < n; i++)
  if (pp->children[i].state == GIT_CP_WORKING)
   kill(pp->children[i].process.pid, signo);
}
