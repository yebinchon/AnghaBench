
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_query {scalar_t__ in_type; int old_qid; int pid; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {int h; } ;


 TYPE_1__* CQ ;
 int assert (int) ;
 int rpc_target_choose_random_connections (int ,int *,int,struct connection**) ;
 int rpc_target_lookup (int *) ;
 int sent_answers ;
 int skipped_answers ;
 int tl_copy_through (int,int) ;
 int tl_fetch_move (int) ;
 int tl_fetch_unread () ;
 scalar_t__ tl_init_store (scalar_t__,int *,int ) ;
 int tl_store_end () ;
 int tl_store_header (int ) ;
 int tl_store_init (struct connection*,int ) ;
 scalar_t__ tl_type_conn ;

void default_double_receive_on_answer (struct rpc_query *q) {
  struct connection *ca[3];
  int t = rpc_target_choose_random_connections (rpc_target_lookup (&q->pid), &q->pid, 2, ca);
  if (t >= 0 && q->in_type == tl_type_conn) {
    int i;
    int p = tl_fetch_unread ();
    for (i = 0; i < t; i ++) {
      struct connection *d = ca[i];
      tl_store_init (d, q->old_qid);
      tl_store_header (CQ->h);
      tl_copy_through (tl_fetch_unread (), 0);
      tl_store_end ();
    }
    sent_answers ++;
    assert (tl_fetch_move (p) == p);
  } else {
    if (tl_init_store (q->in_type, &q->pid, q->old_qid) < 0) {
      skipped_answers ++;
      return;
    }
    tl_store_header (CQ->h);
    sent_answers ++;

    tl_copy_through (tl_fetch_unread (), 1);
    tl_store_end ();
  }
}
