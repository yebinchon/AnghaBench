
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_saved_query {int failed; int wait_num; } ;
struct binlog_wait_query {scalar_t__ timeout; scalar_t__ start_time; int wait_pos; int ev; struct tl_saved_query* extra; } ;


 int add_finished_query (struct tl_saved_query*) ;
 int assert (int) ;
 long long log_last_pos () ;
 long long lookup_binlog_time (int ) ;
 scalar_t__ precise_now ;
 int remove_event_timer (int *) ;
 int tl_binlog_wait_pos_add (struct tl_saved_query*,long long,scalar_t__) ;

void tl_binlog_wait_time_on_complete (struct binlog_wait_query *Q) {
  struct tl_saved_query *q = Q->extra;
  remove_event_timer (&Q->ev);
  q->wait_num --;
  long long pos = lookup_binlog_time (Q->wait_pos);
  assert (pos > 0);
  if (log_last_pos () < pos && !q->failed) {
    tl_binlog_wait_pos_add (q, pos, Q->start_time + Q->timeout - precise_now);
  }

  if (!q->wait_num && !q->failed) {
    add_finished_query (q);
  }
}
