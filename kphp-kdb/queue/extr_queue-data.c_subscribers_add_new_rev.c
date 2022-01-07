
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_6__ {TYPE_3__ s; } ;
typedef TYPE_1__ subscribers ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_2__ pli ;
typedef int ll ;


 TYPE_1__* get_subscribers (int ,int ) ;
 int rand () ;
 int treap_add (TYPE_3__*,int ,int ,int ) ;
 int treap_cnt_rev ;

int subscribers_add_new_rev (ll id, pli *a, int n) {

  subscribers *s = get_subscribers (id, 0);
  if (s != ((void*)0)) {
    treap_cnt_rev += s->s.size;

    int i;
    for (i = 0; i < n; i++) {
      treap_add (&s->s, a[i].x, a[i].y, rand());

    }
    treap_cnt_rev -= s->s.size;
  }

  return 1;
}
