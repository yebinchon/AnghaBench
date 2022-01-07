
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* trp_node_ptr ;
struct TYPE_3__ {int x; struct TYPE_3__* r; struct TYPE_3__* l; } ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;

void trp_debug_print (trp_node_ptr v, FILE *f) {
  if (v == ((void*)0)) {
    return;
  }
  trp_debug_print (v->l, f);
  fprintf (f, " %+d", v->x / 2 * (v->x & 1 ? +1 : -1));
  trp_debug_print (v->r, f);
}
