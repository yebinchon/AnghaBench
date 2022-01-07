
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subs; int id; } ;
typedef TYPE_1__ queue ;
typedef int pli ;
typedef int ll ;


 TYPE_1__* get_news_queue (int ,int ) ;
 int process_changes (int ,int ,int *,int,int,int ) ;

int set_news_subscr_add (ll id, pli *a, int n) {
  queue *q = get_news_queue (id, 0);
  if (q == ((void*)0)) {
    return 0;
  }
  id = q->id;

  process_changes (id, q->subs, a, n, 1, 0);
  return 1;
}
