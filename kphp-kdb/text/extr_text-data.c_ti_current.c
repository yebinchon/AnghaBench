
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree_t ;
struct TYPE_3__ {int Sp; int ** St; } ;
typedef TYPE_1__ tree_iterator_t ;



__attribute__((used)) static inline tree_t *ti_current (tree_iterator_t *I) {
  return I->Sp ? I->St[I->Sp - 1] : 0;
}
