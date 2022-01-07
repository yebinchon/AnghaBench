
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ status; int long_lock_heap_pos; scalar_t__ temp_id; scalar_t__ long_locked_until; } ;
typedef TYPE_1__ transaction_t ;
struct lev_money_trans_cancel {scalar_t__ temp_id; scalar_t__ transaction_id; } ;


 int assert (int) ;
 int cancelled_long_transactions ;
 int cancelled_transactions ;
 int expired_long_transactions ;
 TYPE_1__* get_temp_transaction (int) ;
 TYPE_1__* get_transaction (scalar_t__) ;
 scalar_t__ now ;
 int remove_from_lock_heap (TYPE_1__*) ;
 int remove_temp_transaction (TYPE_1__*) ;
 scalar_t__ trs_cancelled ;
 scalar_t__ trs_declared ;
 scalar_t__ trs_declared_locked ;
 scalar_t__ trs_long_locked ;
 int unlock_transaction (TYPE_1__*) ;

__attribute__((used)) static int cancel_transaction (struct lev_money_trans_cancel *E) {
  transaction_t *T = get_transaction (E->transaction_id);
  assert (E->transaction_id && T);
  if (T->status == trs_long_locked) {
    assert (E->temp_id < 0 && E->temp_id >= -3 && !get_temp_transaction (E->temp_id));
    assert (T->long_lock_heap_pos && T->long_locked_until);
    remove_from_lock_heap (T);
    T->long_lock_heap_pos = E->temp_id;
    T->status = trs_declared_locked;
  } else {
    assert (E->temp_id == T->temp_id && E->temp_id > 0);
    assert (T == get_temp_transaction (E->temp_id));
    assert (T->status == trs_declared || T->status == trs_declared_locked);
    assert (!T->long_lock_heap_pos && !T->long_locked_until);
  }
  T->long_locked_until = now;
  unlock_transaction (T);

  T->status = trs_cancelled;
  if (E->temp_id > 0) {
    remove_temp_transaction (T);
  } else if (E->temp_id == -3) {
    expired_long_transactions++;
  } else {
    cancelled_long_transactions++;
  }
  cancelled_transactions++;

  return 1;
}
