
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct condition_filter_iterator {int pos; TYPE_1__* A; int Cond; int (* jump_to ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__* iterator_t ;
typedef int condition_t ;
struct TYPE_5__ {int pos; } ;


 int condition_filter_iterator_jump_to (TYPE_1__*,int ) ;
 struct condition_filter_iterator* zmalloc (int) ;

iterator_t build_condition_filter_iterator (iterator_t A, condition_t Cond) {
  struct condition_filter_iterator *I = zmalloc (sizeof (struct condition_filter_iterator));
  I->jump_to = condition_filter_iterator_jump_to;
  I->Cond = Cond;
  I->A = A;
  I->pos = A->pos;
  condition_filter_iterator_jump_to ((iterator_t) I, A->pos);
  return (iterator_t) I;
}
