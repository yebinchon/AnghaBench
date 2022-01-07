
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ pid; } ;
typedef TYPE_1__ koaux_t ;


 scalar_t__ KO_PIPE ;
 int WNOHANG ;
 int kill (scalar_t__,int) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int kclose(void *a)
{
 koaux_t *aux = (koaux_t*)a;
 if (aux->type == KO_PIPE) {
  int status;
  pid_t pid;
  pid = waitpid(aux->pid, &status, WNOHANG);
  if (pid != aux->pid) kill(aux->pid, 15);
 }
 return 0;
}
