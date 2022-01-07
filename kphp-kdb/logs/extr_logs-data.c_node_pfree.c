
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_5__ {int vn; TYPE_1__ tok; int * v; scalar_t__ is_const; } ;
typedef TYPE_2__ node ;


 int del_node (int ) ;
 int dl_free (int *,int) ;
 int t_var ;

void node_pfree (node *v) {
  if (v->is_const) {
    int i;
    for (i = 0; i < v->vn; i++) {
      del_node (v->v[i]);
    }
    dl_free (v->v, sizeof (node *) * v->vn);
    v->vn = 0;
    v->v = ((void*)0);
    v->tok.type = t_var;
  }
}
