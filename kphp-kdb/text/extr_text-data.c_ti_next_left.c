
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ right; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_8__ {int Sp; TYPE_1__** St; } ;
typedef TYPE_2__ tree_iterator_t ;


 TYPE_1__* ti_dive_left (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static tree_t *ti_next_left (tree_iterator_t *I) {
  int sp = I->Sp;
  if (!sp) {
    return 0;
  }
  tree_t *T = I->St[--sp];
  I->Sp = sp;
  if (T->right) {
    return ti_dive_left (I, T->right);
  } else if (sp) {
    return I->St[sp - 1];
  } else {
    return 0;
  }
}
