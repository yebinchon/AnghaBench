
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; int * x; } ;
typedef TYPE_1__ md5_tree_t ;


 int memcmp (unsigned char*,int *,int) ;

__attribute__((used)) static md5_tree_t *md5_tree_lookup (md5_tree_t *T, unsigned char x[16]) {
  while (T) {
    int c = memcmp (&x[0], &T->x[0], 16);
    if (c < 0) {
      T = T->left;
    } else if (c > 0) {
      T = T->right;
    } else {
      return T;
    }
  }
  return T;
}
