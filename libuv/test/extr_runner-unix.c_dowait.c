
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int terminated; int status; int pid; } ;
typedef TYPE_1__ process_info_t ;
struct TYPE_4__ {int n; scalar_t__* pipe; scalar_t__ vec; } ;
typedef TYPE_2__ dowait_args ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int perror (char*) ;
 int waitpid (int ,int *,int ) ;
 int write (scalar_t__,char*,int) ;

__attribute__((used)) static void* dowait(void* data) {
  dowait_args* args = data;

  int i, r;
  process_info_t* p;

  for (i = 0; i < args->n; i++) {
    p = (process_info_t*)(args->vec + i * sizeof(process_info_t));
    if (p->terminated) continue;
    r = waitpid(p->pid, &p->status, 0);
    if (r < 0) {
      perror("waitpid");
      return ((void*)0);
    }
    p->terminated = 1;
  }

  if (args->pipe[1] >= 0) {

    ssize_t r;

    do
      r = write(args->pipe[1], "", 1);
    while (r == -1 && errno == EINTR);
  }

  return ((void*)0);
}
