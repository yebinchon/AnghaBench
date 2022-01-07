
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ size; } ;
struct TYPE_7__ {TYPE_3__ s; } ;
typedef TYPE_1__ subscribers ;
struct TYPE_8__ {int x; } ;
typedef TYPE_2__ pli ;
typedef int ll ;


 int free_subscribers (TYPE_1__*) ;
 TYPE_1__* get_subscribers (int ,int ) ;
 int treap_cnt_rev ;
 int treap_del (TYPE_3__*,int ) ;

int subscribers_del_old (ll id, pli *a, int n) {
  int i;
  for (i = 0; i < n; i++) {
    subscribers *s = get_subscribers (a[i].x, 0);
    if (s != ((void*)0)) {
      treap_cnt_rev += s->s.size;
      treap_del (&s->s, id);
      treap_cnt_rev -= s->s.size;

      if (s->s.size == 0) {
        free_subscribers (s);
      }

    }
  }

  return 1;
}
