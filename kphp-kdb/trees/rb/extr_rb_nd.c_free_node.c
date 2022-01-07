
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ rbtree_t ;


 int nd ;
 int zfree (char*,int) ;

__attribute__((used)) static void free_node (rbtree_t *N, int extra) {

  N->left = N->right = 0;
  N->x = 0;
  ++nd;
  zfree ((char *) N, sizeof (rbtree_t) + 4*extra);
}
