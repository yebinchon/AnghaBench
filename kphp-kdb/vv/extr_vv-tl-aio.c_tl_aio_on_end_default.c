
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_saved_query {int failed; int wait_num; } ;
struct conn_query {struct tl_saved_query* extra; } ;


 int finished_aio_queue ;
 int queue_add_finished_aio (int ,struct tl_saved_query*) ;
 int tl_delete_aio_query (struct conn_query*) ;

int tl_aio_on_end_default (struct conn_query *Q) {


  struct tl_saved_query *q = Q->extra;
  q->wait_num --;
  if (!q->wait_num && !q->failed) {
    finished_aio_queue = queue_add_finished_aio (finished_aio_queue, q);
  }
  tl_delete_aio_query (Q);
  return 0;
}
