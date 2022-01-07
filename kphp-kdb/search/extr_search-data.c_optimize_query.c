
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; struct TYPE_4__* left; struct TYPE_4__* right; int priority; } ;
typedef TYPE_1__ query_node_t ;


 int assert (int ) ;







query_node_t *optimize_query (query_node_t *X) {
  if (!X) {
    return 0;
  }
  X->left = optimize_query (X->left);
  X->right = optimize_query (X->right);
  switch (X->op) {
    case 132:
    case 129:
    case 128:
      return X;
    case 133:
      if (X->left->op == 132) {
        return X->left;
      }
      if (X->left->op == 129) {
        return X->right;
      }
      if (X->right->op == 132) {
        return X->right;
      }
      if (X->right->op == 129) {
        return X->left;
      }
      return X;
    case 130:
      if (X->left->op == 129) {
        return X->left;
      }
      if (X->left->op == 132) {
        return X->right;
      }
      if (X->right->op == 129) {
        return X->right;
      }
      if (X->right->op == 132) {
        return X->left;
      }
      return X;
    case 131:
      if (X->left->op == 132) {
        return X->left;
      }
      if (X->right->op == 129) {
        X->op = 132;
        X->left = X->right = 0;
        X->priority = 0;
        return X;
      }
      if (X->right->op == 132) {
        return X->left;
      }
      return X;
  }
  assert (0);
}
