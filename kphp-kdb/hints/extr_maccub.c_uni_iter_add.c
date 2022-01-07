
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t n; int * it; int r; int l; } ;
typedef TYPE_1__ uni_iterator ;
typedef int * changes ;
typedef int * LIST ;


 size_t MAX_WORDS ;
 int data_iter_init (int *,int *,int *,int,int,int ,int ) ;
 int data_iter_val_and_next (int *) ;

void uni_iter_add (uni_iterator *v, LIST a, changes b, int tot_items, int len) {
  if ((a != ((void*)0) || b != ((void*)0)) && v->n < MAX_WORDS) {
    data_iter_init (&v->it[v->n], a, b, tot_items, len, v->l, v->r);
    data_iter_val_and_next (&v->it[v->n++]);
  }
}
