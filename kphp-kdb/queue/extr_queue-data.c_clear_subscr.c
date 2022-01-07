
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* subs; int id; int name; } ;
typedef TYPE_1__ queue ;
struct TYPE_6__ {scalar_t__ size; int root; } ;


 scalar_t__ MAX_DIFF ;
 int dbg (char*,TYPE_1__*,int ) ;
 int process_changes (int ,int *,int ,int ,int ,int ) ;
 int to_del ;
 int to_del_n ;
 int to_del_overflow ;
 scalar_t__ treap_cnt ;
 int treap_conv_to_array (int ,int ,scalar_t__) ;
 int treap_free (TYPE_2__*) ;

void clear_subscr (queue *q) {
  dbg ("clear_subscr: (q = %p), (qname = %s)\n", q, q->name);
  if (-q->subs->size > MAX_DIFF) {
    to_del_overflow += -q->subs->size - MAX_DIFF;
  }
  to_del_n = treap_conv_to_array (q->subs->root, to_del, MAX_DIFF);
  process_changes (q->id, ((void*)0), to_del, to_del_n, 0, 0);

  treap_cnt += q->subs->size;
  treap_free (q->subs);
  treap_cnt -= q->subs->size;
}
