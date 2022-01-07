
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int root; } ;
typedef TYPE_1__ treap ;
struct TYPE_11__ {TYPE_1__* subs; int id; } ;
typedef TYPE_2__ queue ;
struct TYPE_12__ {int y; int x; } ;
typedef TYPE_3__ pli ;
typedef int ll ;


 int dl_qsort_pli (TYPE_3__*,int) ;
 TYPE_3__* gd_a ;
 TYPE_3__* gd_b ;
 int gen_diff_go (int ) ;
 TYPE_2__* get_news_queue (int ,int) ;
 scalar_t__ insert_to_add (int ,int ) ;
 int news_subscr_actual_len ;
 int news_subscr_cnt ;
 int news_subscr_len ;
 int news_subscr_missed ;
 int process_changes (int ,TYPE_1__*,int ,scalar_t__,int,int ) ;
 int to_add ;
 scalar_t__ to_add_n ;
 int to_del ;
 scalar_t__ to_del_n ;

int set_news_subscr (ll id, pli *a, int n) {
  queue *q = get_news_queue (id, 1);
  if (q == ((void*)0)) {
    return 0;
  }
  id = q->id;

  dl_qsort_pli (a, n);

  to_add_n = to_del_n = 0;
  gd_a = a;
  gd_b = a + n;

  news_subscr_len += n;
  news_subscr_cnt++;

  treap *t = q->subs;
  gen_diff_go (t->root);
  while (gd_a != gd_b && insert_to_add (gd_a->x, gd_a->y)) {
    gd_a++;
  }
  news_subscr_actual_len += to_del_n + to_add_n;
  news_subscr_missed += (to_del_n + to_add_n) != 0;

  process_changes (id, t, to_del, to_del_n, 0, 0);
  process_changes (id, t, to_add, to_add_n, 1, 0);
  return 1;
}
