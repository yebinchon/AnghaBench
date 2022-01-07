
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status; long long transaction_id; int temp_id; int declared_date; } ;
typedef TYPE_1__ transaction_t ;
struct lev_money_trans_commit {long long transaction_id; int temp_id; } ;


 int LEV_MONEY_TRANS_COMMIT ;
 int add_temp_transaction (TYPE_1__*) ;
 struct lev_money_trans_commit* alloc_log_event (int ,int,int) ;
 int assert (int) ;
 int check_transaction (TYPE_1__*) ;
 int commit_transaction (struct lev_money_trans_commit*) ;
 int do_declare_transaction (TYPE_1__*) ;
 int flush_binlog_forced (int ) ;
 long long get_next_transaction_id () ;
 TYPE_1__* get_temp_transaction (int) ;
 int sprintf (char*,char*,long long,int ,int ) ;
 scalar_t__ trs_temp ;
 scalar_t__ trs_temp_locked ;

int do_commit_transaction (int temp_id, long long *transaction_id, char buffer[256]) {
  transaction_t *T = get_temp_transaction (temp_id);
  *transaction_id = 0;
  *buffer = 0;
  if (!T) {
    return 0;
  }
  int res = check_transaction (T);
  if (res < 0) {
    return res;
  }
  if (T->status != trs_temp && T->status != trs_temp_locked) {
    return -1;
  }
  if (!T->transaction_id) {
    T->transaction_id = get_next_transaction_id();
  }

  assert (do_declare_transaction (T) == 1);

  struct lev_money_trans_commit *EC = alloc_log_event (LEV_MONEY_TRANS_COMMIT, sizeof (struct lev_money_trans_commit), temp_id);

  EC->temp_id = T->temp_id;
  EC->transaction_id = T->transaction_id;

  assert (commit_transaction (EC) == 1);

  add_temp_transaction (T);

  *transaction_id = T->transaction_id;

  sprintf (buffer, "%16llx_%08x%08x", T->transaction_id, T->declared_date, T->temp_id);

  flush_binlog_forced (0);

  return 1;
}
