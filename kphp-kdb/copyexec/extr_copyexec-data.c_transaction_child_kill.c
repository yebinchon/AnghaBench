
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pid; struct TYPE_4__* next; } ;
typedef TYPE_1__ transaction_t ;


 scalar_t__ check_is_running (TYPE_1__*) ;
 TYPE_1__ child_running_list ;
 int kill (int ,int) ;
 int vkprintf (int,char*,int,int) ;

int transaction_child_kill (int sig) {
  int res = 0;
  transaction_t *T;
  for (T = child_running_list.next; T != &child_running_list; T = T->next) {
    if (check_is_running (T)) {
      if (!kill (T->pid, sig)) {
        res++;
      }
    }
  }
  if (res > 0) {
    vkprintf (3, "transaction_child_kill: send signal %d to %d transaction(s).\n", sig, res);
  }
  return res;
}
