
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pid; int transaction_id; } ;
typedef TYPE_1__ transaction_t ;


 int SIGUSR2 ;
 int check_is_running (TYPE_1__*) ;
 int kill (int ,int ) ;
 int vkprintf (int,char*,int ) ;

__attribute__((used)) static int transaction_cancel (transaction_t *T) {
  if (!check_is_running (T)) {
    vkprintf (3, "transaction_cancel: tr%d has terminated.\n", T->transaction_id);
    return 0;
  }
  int r = kill (T->pid, SIGUSR2);
  if (r < 0) {
    vkprintf (2, "transaction_cancel: kill (%d) failed. %m\n", T->pid);
  }
  return r;
}
