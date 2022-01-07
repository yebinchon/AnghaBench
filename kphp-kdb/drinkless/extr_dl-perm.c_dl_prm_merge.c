
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_10__ {scalar_t__ y; struct TYPE_10__* l; struct TYPE_10__* p; int len; struct TYPE_10__* r; } ;


 scalar_t__ LEN (TYPE_1__*) ;
 int fix (TYPE_1__**,TYPE_1__**,TYPE_1__**) ;

void dl_prm_merge (dl_prm_ptr *tr, dl_prm_ptr a, dl_prm_ptr b, dl_prm_ptr *rv) {
  dl_prm_ptr p = ((void*)0);

  fix (&a, &b, rv);

  while (a || b) {
    if (b == ((void*)0) || (a != ((void*)0) && a->y > b->y)) {
      a->len += LEN(b);

      a->p = p;
      p = a;

      *tr = a;
      tr = &a->r;
      a = a->r;
    } else {
      b->len += LEN(a);

      b->p = p;
      p = b;

      *tr = b;
      tr = &b->l;
      b = b->l;
    }
  }
  *tr = ((void*)0);
}
