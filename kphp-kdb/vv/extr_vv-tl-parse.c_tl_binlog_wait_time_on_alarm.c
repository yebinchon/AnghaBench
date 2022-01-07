
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_saved_query {int failed; int (* free_extra ) (struct tl_saved_query*) ;int wait_num; int error_code; } ;
struct binlog_wait_query {struct tl_saved_query* extra; } ;


 int TL_ERROR_BINLOG_WAIT_TIMEOUT ;
 int binlog_wait_time_tree ;
 int expired_aio_queries ;
 int stub1 (struct tl_saved_query*) ;
 int tl_aio_fail_start (struct tl_saved_query*) ;
 int tl_update_next_binlog_wait_time () ;
 int tree_delete_binlog_wait (int ,struct binlog_wait_query*) ;
 int zfree (struct tl_saved_query*,int) ;

void tl_binlog_wait_time_on_alarm (struct binlog_wait_query *Q) {
  struct tl_saved_query *q = Q->extra;
  binlog_wait_time_tree = tree_delete_binlog_wait (binlog_wait_time_tree, Q);
  tl_update_next_binlog_wait_time ();

  q->wait_num --;
  expired_aio_queries ++;
  if (!q->failed) {
    q->error_code = TL_ERROR_BINLOG_WAIT_TIMEOUT;
    tl_aio_fail_start (q);

  }
  q->failed = 1;
  if (!q->wait_num) {
    q->free_extra (q);
    zfree (q, sizeof (*q));
  }
}
