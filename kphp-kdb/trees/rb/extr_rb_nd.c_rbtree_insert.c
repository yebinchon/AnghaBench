
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int x; struct TYPE_7__* left; struct TYPE_7__* right; } ;
typedef TYPE_1__ rbtree_t ;


 int BLACKEN (TYPE_1__*) ;
 scalar_t__ IS_BLACK (TYPE_1__*) ;
 TYPE_1__* new_node (int,int,int*) ;

__attribute__((used)) static rbtree_t *rbtree_insert (rbtree_t *Root, int x, int extra, int *Data) {
  rbtree_t *st[70];
  rbtree_t *T, *N, *U;
  int sp;

  x <<= 1;


  if (!Root) {
    return new_node (x, extra, Data);
  }

  sp = 0;
  T = Root;
  while (T) {
    st[sp++] = T;
    if (T->x < x) {
      T = T->right;
    } else if (T->x > x + 1) {
      T = T->left;
    } else {

      return T;
    }
  }

  N = new_node (x+1, extra, Data);

  while (sp > 0) {
    T = st[--sp];


    if (x < T->x) {

      if (IS_BLACK(T)) {

        T->left = N;
        return Root;
      }
      if (!sp) {

        BLACKEN(T);
        T->left = N;
        return Root;
      }
      U = st[--sp];

      if (x < U->x) {



        U->left = T->right;
        T->right = U;
        BLACKEN(N);
        N = U;
      } else {


        T->right = N->left;
        BLACKEN(T);
        N->left = T;
        U->left = N->right;
        N->right = U;
      }
    } else {

      if (IS_BLACK(T)) {

        T->right = N;
        return Root;
      }
      if (!sp) {

        BLACKEN(T);
        T->right = N;
        return Root;
      }
      U = st[--sp];

      if (x < U->x) {


        T->left = N->right;
        BLACKEN(T);
        N->right = T;
        U->right = N->left;
        N->left = U;
      } else {


        U->right = T->left;
        T->left = U;
        BLACKEN(N);
        N = T;
      }
    }
  }

  return N;
}
