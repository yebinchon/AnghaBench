
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* right; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_7__ {int Sp; TYPE_1__** St; } ;
typedef TYPE_2__ tree_iterator_t ;


 int MAX_SP ;
 int assert (int) ;

__attribute__((used)) static tree_t *ti_dive_right (tree_iterator_t *I, tree_t *T) {
  int sp = I->Sp;
  while (1) {
    I->St[sp++] = T;
    assert (sp < MAX_SP);
    if (!T->right) {
      I->Sp = sp;
      return T;
    }
    T = T->right;
  }
}
