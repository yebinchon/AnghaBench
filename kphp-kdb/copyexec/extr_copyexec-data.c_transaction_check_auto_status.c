
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ transaction_t ;


 TYPE_1__ auto_running_list ;
 int check_is_running (TYPE_1__*) ;
 int transaction_finish_execution (TYPE_1__*,int) ;
 int vkprintf (int,char*,...) ;

int transaction_check_auto_status (void) {
  int res = 0;
  transaction_t *T, *W;

  for (T = auto_running_list.next; T != &auto_running_list; T = W) {
    W = T->next;
    if (!check_is_running (T)) {
      vkprintf (4, "transaction_check_auto_status: call transaction_finish_execution\n");
      transaction_finish_execution (T, 1);
    }
  }
  if (res > 0) {
    vkprintf (3, "transaction_check_auto_status: %d transaction(s) finished.\n", res);
  }
  return res;
}
