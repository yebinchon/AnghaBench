
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; scalar_t__ long_lock_cancel_timeout; int transaction_id; } ;
typedef TYPE_1__ transaction_t ;
struct lev_money_trans_cancel {int temp_id; int transaction_id; } ;
typedef scalar_t__ money_auth_code_t ;


 int LEV_MONEY_TRANS_CANCEL ;
 struct lev_money_trans_cancel* alloc_log_event (int ,int,int) ;
 int assert (int) ;
 int cancel_transaction (struct lev_money_trans_cancel*) ;
 int compute_lock_codes (TYPE_1__*,scalar_t__*) ;
 int flush_binlog_forced (int ) ;
 TYPE_1__* get_transaction (long long) ;
 scalar_t__ now ;
 scalar_t__ trs_long_locked ;

int do_long_cancel_transaction (long long transaction_id, money_auth_code_t auth_code) {
  money_auth_code_t codes[2];
  transaction_t *T = get_transaction (transaction_id);
  if (!T) {
    return 0;
  }
  if (T->status != trs_long_locked) {
    return -1;
  }
  compute_lock_codes (T, codes);
  if (auth_code != codes[0] && (auth_code != codes[1] || now < T->long_lock_cancel_timeout)) {
    return -1;
  }
  struct lev_money_trans_cancel *EC = alloc_log_event (LEV_MONEY_TRANS_CANCEL, sizeof (struct lev_money_trans_cancel), -2);

  EC->temp_id = (auth_code == codes[0] ? -2 : -1);
  EC->transaction_id = T->transaction_id;

  assert (cancel_transaction (EC) == 1);

  flush_binlog_forced (0);

  return 3;
}
