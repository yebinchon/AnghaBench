
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* trp_node_ptr ;
struct TYPE_4__ {int x; scalar_t__ y; struct TYPE_4__* l; struct TYPE_4__* r; } ;


 TYPE_1__* get_new_node () ;
 scalar_t__ my_rand () ;

trp_node_ptr trp_conv_from_array_rev (int *a, int n) {
  static trp_node_ptr stack[600];


  int sn = 0, i;

  stack[0] = ((void*)0);

  for (i = n - 1; i >= 0; i--) {
    trp_node_ptr new_el = get_new_node();
    new_el->x = a[i];
    new_el->y = my_rand();
    new_el->r = ((void*)0);
    while (sn && stack[sn - 1]->y < new_el->y) {
      sn--;
    }
    if (sn) {
      new_el->l = stack[sn - 1]->r;
      stack[sn - 1]->r = new_el;
    } else {
      new_el->l = stack[0];
    }
    stack[sn++] = new_el;
  }

  return stack[0];
}
