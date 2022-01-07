
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* iterator_t ;
struct TYPE_3__ {int pos; int jump_to; } ;


 int INFTY ;
 int * User ;
 int assert (int) ;
 int empty_iterator_jump_to ;
 int max_uid ;

int everything_iterator_jump_to (iterator_t I, int req_pos) {
  assert (req_pos > I->pos);
  while (req_pos <= max_uid && !User[req_pos]) {
    ++req_pos;
  }
  if (req_pos > max_uid) {
    I->jump_to = empty_iterator_jump_to;
    return I->pos = INFTY;
  }
  return I->pos = req_pos;
}
