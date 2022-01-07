
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct binary_operation_iterator {TYPE_1__* B; TYPE_1__* A; int pos; int jump_to; } ;
typedef TYPE_1__* iterator_t ;
struct TYPE_5__ {int pos; } ;


 int binary_union_iterator_jump_to ;
 int min (int ,int ) ;
 struct binary_operation_iterator* zmalloc (int) ;

iterator_t build_binary_union_iterator (iterator_t A, iterator_t B) {
  struct binary_operation_iterator *I = zmalloc (sizeof (struct binary_operation_iterator));
  I->jump_to = binary_union_iterator_jump_to;
  I->pos = min (A->pos, B->pos);
  I->A = A;
  I->B = B;
  return (iterator_t) I;
}
