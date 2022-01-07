
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_saved_query {int failed; int (* free_extra ) (struct tl_saved_query*) ;int wait_num; int error_code; } ;
struct conn_query {struct tl_saved_query* extra; } ;


 int TL_ERROR_AIO_TIMEOUT ;
 int expired_aio_queries ;
 int stub1 (struct tl_saved_query*) ;
 int tl_aio_fail_start (struct tl_saved_query*) ;
 int tl_delete_aio_query (struct conn_query*) ;
 int zfree (struct tl_saved_query*,int) ;

int tl_aio_on_timeout_default (struct conn_query *Q) {
  struct tl_saved_query *q = Q->extra;
  q->wait_num --;
  expired_aio_queries ++;
  if (!q->failed) {
    q->error_code = TL_ERROR_AIO_TIMEOUT;

    tl_aio_fail_start (q);
  }
  q->failed = 1;
  if (!q->wait_num) {
    q->free_extra (q);
    zfree (q, sizeof (*q));
  }
  tl_delete_aio_query (Q);
  return 0;
}
