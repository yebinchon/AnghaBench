
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ x; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef TYPE_1__ privacy_t ;
typedef scalar_t__ privacy_key_t ;


 int free_privacy_node (TYPE_1__*) ;
 TYPE_1__* privacy_merge (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static privacy_t *privacy_delete (privacy_t *T, privacy_key_t x) {
  if (T->x == x) {
    privacy_t *N = privacy_merge (T->left, T->right);
    free_privacy_node (T);
    return N;
  }
  if (x < T->x) {
    T->left = privacy_delete (T->left, x);
  } else {
    T->right = privacy_delete (T->right, x);
  }
  return T;
}
