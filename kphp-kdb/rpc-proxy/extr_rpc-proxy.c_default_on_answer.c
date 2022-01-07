
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_query {int old_qid; int pid; int in_type; } ;
struct TYPE_4__ {TYPE_1__* h; } ;
struct TYPE_3__ {int real_op; } ;


 TYPE_2__* CQ ;
 int sent_answers ;
 int skipped_answers ;
 int tl_copy_through (int ,int) ;
 int tl_fetch_unread () ;
 scalar_t__ tl_init_store (int ,int *,int ) ;
 int tl_store_end_ext (int ) ;
 int tl_store_header (TYPE_1__*) ;

void default_on_answer (struct rpc_query *q) {
  if (tl_init_store (q->in_type, &q->pid, q->old_qid) < 0) {
    skipped_answers ++;
    return;
  }
  tl_store_header (CQ->h);
  sent_answers ++;


  tl_copy_through (tl_fetch_unread (), 1);

  tl_store_end_ext (CQ->h->real_op);
}
