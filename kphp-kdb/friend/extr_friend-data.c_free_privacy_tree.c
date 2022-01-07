
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ privacy_t ;


 int free_privacy_node (TYPE_1__*) ;

__attribute__((used)) static void free_privacy_tree (privacy_t *T) {
  if (T) {
    free_privacy_tree (T->left);
    free_privacy_tree (T->right);
    free_privacy_node (T);
  }
}
