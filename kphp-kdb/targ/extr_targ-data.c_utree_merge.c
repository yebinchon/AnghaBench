
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; struct TYPE_5__* uplink; struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_1__ utree_t ;



__attribute__((used)) static utree_t *utree_merge (utree_t *L, utree_t *R) {
  if (!L) { return R; }
  if (!R) { return L; }
  if (L->y > R->y) {
    L->right = utree_merge (L->right, R);
    if (L->right) {
      L->right->uplink = L;
    }
    return L;
  } else {
    R->left = utree_merge (L, R->left);
    if (R->left) {
      R->left->uplink = R;
    }
    return R;
  }
}
