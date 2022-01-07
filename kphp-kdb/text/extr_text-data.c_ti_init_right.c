
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree_t ;
struct TYPE_4__ {scalar_t__ Sp; } ;
typedef TYPE_1__ tree_iterator_t ;


 int * ti_dive_right (TYPE_1__*,int *) ;

__attribute__((used)) static tree_t *ti_init_right (tree_iterator_t *I, tree_t *T) {
  I->Sp = 0;
  if (T) {
    return ti_dive_right (I, T);
  } else {
    return 0;
  }
}
