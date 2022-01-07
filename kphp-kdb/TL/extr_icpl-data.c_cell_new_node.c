
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* right; TYPE_3__* left; } ;
struct TYPE_9__ {TYPE_1__ p; } ;
struct TYPE_10__ {TYPE_2__ u; int type; } ;
typedef TYPE_3__ icpl_cell_t ;


 int ct_node ;
 TYPE_3__* zmalloc0 (int) ;

__attribute__((used)) static icpl_cell_t *cell_new_node (icpl_cell_t *left, icpl_cell_t *right) {
  if (left == ((void*)0)) {
    return right;
  }
  icpl_cell_t *c = zmalloc0 (sizeof (*c));
  c->type = ct_node;
  c->u.p.left = left;
  c->u.p.right = right;
  return c;
}
