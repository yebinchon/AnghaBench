
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long binlog_pos; scalar_t__ transaction_id; } ;
typedef TYPE_1__ transaction_t ;


 int free_old_transactions (long long) ;
 TYPE_1__* get_first_want_exec_transaction () ;
 scalar_t__ transactions ;

__attribute__((used)) static void get_aux_binlog_jump_log_pos (long long *pos) {
  transaction_t *T = get_first_want_exec_transaction ();
  if (T) {
    *pos = T->binlog_pos;
    transactions = T->transaction_id - 1;
    free_old_transactions (T->binlog_pos);
  } else {
    *pos = 0;
    transactions = 0;
  }
}
