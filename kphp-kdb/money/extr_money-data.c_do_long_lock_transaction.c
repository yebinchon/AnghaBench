
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ status; long long transaction_id; int temp_id; } ;
typedef TYPE_1__ transaction_t ;
struct lev_money_trans_lock {int temp_id; long long transaction_id; int lock_seconds; int lock_secret; } ;
typedef int money_auth_code_t ;


 int LEV_MONEY_TRANS_LOCK ;
 int MAX_LOCK_SECONDS ;
 int MIN_LOCK_SECONDS ;
 int add_temp_transaction (TYPE_1__*) ;
 struct lev_money_trans_lock* alloc_log_event (int ,int,int) ;
 int assert (int) ;
 int check_transaction (TYPE_1__*) ;
 int compute_lock_codes (TYPE_1__*,int *) ;
 int do_declare_transaction (TYPE_1__*) ;
 long long get_next_transaction_id () ;
 TYPE_1__* get_temp_transaction (int) ;
 int long_lock_transaction (struct lev_money_trans_lock*) ;
 int lrand48 () ;
 int now ;
 scalar_t__ trs_temp ;
 scalar_t__ trs_temp_locked ;

int do_long_lock_transaction (int temp_id, int seconds, long long *transaction_id, money_auth_code_t codes[2]) {
  transaction_t *T = get_temp_transaction (temp_id);
  *transaction_id = 0;
  if (!T || seconds < MIN_LOCK_SECONDS || seconds > MAX_LOCK_SECONDS) {
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

  struct lev_money_trans_lock *EL = alloc_log_event (LEV_MONEY_TRANS_LOCK, sizeof (struct lev_money_trans_lock), temp_id);

  EL->temp_id = T->temp_id;
  EL->transaction_id = T->transaction_id;
  EL->lock_seconds = seconds;
  EL->lock_secret = (lrand48() ^ now ^ T->temp_id) & 0x7fffffff;
  if (!EL->lock_secret) {
    EL->lock_secret++;
  }

  assert (long_lock_transaction (EL) == 1);

  add_temp_transaction (T);

  *transaction_id = T->transaction_id;
  compute_lock_codes (T, codes);

  return 2;
}
