
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int result; int mask; int binlog_pos; } ;
typedef TYPE_1__ transaction_t ;
struct lev_copyexec_main_transaction_status {int result; int mask; int binlog_pos; } ;


 struct lev_copyexec_main_transaction_status* transaction_alloc_log_event_status (TYPE_1__*) ;
 int transaction_change_status (TYPE_1__*,int ) ;
 int ts_io_failed ;

__attribute__((used)) static void alloc_io_failed_logevent (transaction_t *T, int result) {
  if (result < 0) {
    result *= -1;
  }
  transaction_change_status (T, ts_io_failed);
  struct lev_copyexec_main_transaction_status *E = transaction_alloc_log_event_status (T);
  E->binlog_pos = T->binlog_pos;
  E->mask = T->mask;
  E->result = T->result = result;
}
