
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pid; } ;
typedef TYPE_1__ transaction_t ;


 int check_is_running (TYPE_1__*) ;
 TYPE_1__* get_transaction_f (int,int ) ;
 scalar_t__ kill (int ,int) ;
 int transaction_wait (TYPE_1__*) ;

__attribute__((used)) static int do_kill (int signal, int transaction_id) {
  transaction_t *T = get_transaction_f (transaction_id, 0);
  if (T == ((void*)0)) {
    return 0;
  }

  if (!check_is_running (T)) {
    return 0;
  }

  if (kill (T->pid, signal) < 0) {
    return 0;
  }

  return transaction_wait (T);
}
