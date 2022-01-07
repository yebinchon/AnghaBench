
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iterator {int pos; int (* jump_to ) (struct iterator*,int ) ;} ;
typedef struct iterator* iterator_t ;


 int everything_iterator_jump_to (struct iterator*,int ) ;
 struct iterator* zmalloc (int) ;

iterator_t build_everything_iterator (void) {
  struct iterator *I = zmalloc (sizeof (struct iterator));
  I->jump_to = everything_iterator_jump_to;
  I->pos = -1;
  everything_iterator_jump_to (I, 0);
  return I;
}
