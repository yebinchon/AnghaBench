
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct id_range_iterator {int lim; } ;
typedef TYPE_1__* iterator_t ;
struct TYPE_3__ {int pos; int jump_to; } ;


 int INFTY ;
 scalar_t__* User ;
 int assert (int) ;
 int empty_iterator_jump_to ;

int id_range_iterator_jump_to (iterator_t I, int req_pos) {
  assert (req_pos > I->pos);
  while (req_pos <= ((struct id_range_iterator *) I)->lim) {
    if (User[req_pos]) {
      return I->pos = req_pos;
    }
    ++req_pos;
  }
  I->jump_to = empty_iterator_jump_to;
  return I->pos = INFTY;
}
