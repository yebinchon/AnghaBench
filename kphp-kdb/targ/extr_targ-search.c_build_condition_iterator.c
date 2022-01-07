
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct condition_iterator {int pos; int (* jump_to ) (int ,int ) ;int Cond; } ;
typedef int iterator_t ;
typedef int condition_t ;


 int condition_iterator_jump_to (int ,int ) ;
 struct condition_iterator* zmalloc (int) ;

iterator_t build_condition_iterator (condition_t Cond) {
  struct condition_iterator *I = zmalloc (sizeof (struct condition_iterator));
  I->pos = -1;
  I->Cond = Cond;
  I->jump_to = condition_iterator_jump_to;
  condition_iterator_jump_to ((iterator_t) I, 0);
  return (iterator_t) I;
}
