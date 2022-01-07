
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* trp_node_ptr ;
struct TYPE_3__ {int x; struct TYPE_3__* r; struct TYPE_3__* l; } ;


 int fprintf (int ,char*,int) ;
 int stderr ;

void outf (trp_node_ptr v) {
  if (v == ((void*)0)) {
    return;
  }
  outf (v->l);
  fprintf (stderr, "%+d ", v->x / 2 * (v->x & 1 ? +1 : -1));
  outf (v->r);
}
