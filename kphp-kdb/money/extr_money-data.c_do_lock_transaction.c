
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status; int locked_until; struct TYPE_6__* unlock_next; } ;
typedef TYPE_1__ transaction_t ;


 int DELAY_QUEUES ;
 TYPE_1__** DelayQueues ;
 int assert (int) ;
 int check_transaction (TYPE_1__*) ;
 int dq ;
 int flush_binlog_forced (int ) ;
 TYPE_1__* get_temp_transaction (int) ;
 int lock_transaction (TYPE_1__*) ;
 scalar_t__ trs_temp ;
 scalar_t__ trs_temp_locked ;

int do_lock_transaction (int temp_id) {
  transaction_t *T = get_temp_transaction (temp_id);
  if (!T) {
    return 0;
  }
  int res = check_transaction (T);
  if (res < 0) {
    return res;
  }
  if (T->status != trs_temp) {
    return 0;
  }
  if (!T->locked_until) {
    assert (!T->unlock_next);
    T->unlock_next = DelayQueues[(dq + 15) & (DELAY_QUEUES-1)];
    DelayQueues[(dq + 15) & (DELAY_QUEUES-1)] = T;
  }
  if (T->locked_until < dq + 15) {
    T->locked_until = dq + 15;
  }

  assert (lock_transaction (T) == 1);
  T->status = trs_temp_locked;

  flush_binlog_forced (0);

  return 2;
}
