
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int subs; int id; } ;
typedef TYPE_1__ queue ;
typedef int ll ;
struct TYPE_6__ {int x; } ;


 TYPE_1__* get_news_queue (int ,int ) ;
 int process_changes (int ,int ,TYPE_2__*,int,int ,int ) ;
 TYPE_2__* to_del ;

int set_news_subscr_del (ll id, ll *a, int n) {
  queue *q = get_news_queue (id, 0);
  if (q == ((void*)0)) {
    return 0;
  }
  id = q->id;

  int i;
  for (i = 0; i < n; i++) {
    to_del[i].x = a[i];
  }
  process_changes (id, q->subs, to_del, n, 0, 0);

  return 1;
}
