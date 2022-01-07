
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* iterator_t ;
struct TYPE_3__ {int pos; int jump_to; } ;


 int INFTY ;
 int empty_iterator_jump_to ;

void init_empty_iterator (iterator_t I) {
  I->jump_to = empty_iterator_jump_to;
  I->pos = INFTY;
}
