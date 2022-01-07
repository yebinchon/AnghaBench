
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ltree_x_t ;
struct TYPE_5__ {int y; int x; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ ltree_t ;


 int alloc_ltree_nodes ;
 int assert (TYPE_1__*) ;
 int ltree_node_size ;
 int memcpy (int ,int ,int ) ;
 int object_list_bytes ;
 TYPE_1__* zmalloc (int ) ;

__attribute__((used)) static ltree_t *new_ltree_node (ltree_x_t x, int y) {
  ltree_t *P = zmalloc (ltree_node_size);
  assert (P);
  alloc_ltree_nodes++;
  P->left = P->right = 0;
  P->y = y;

  P->x = x;



  return P;
}
