
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct condition_iterator {int Cond; } ;
typedef TYPE_1__* iterator_t ;
typedef int condition_t ;
struct TYPE_3__ {int pos; int jump_to; } ;


 int INFTY ;
 int * User ;
 int assert (int) ;
 int empty_iterator_jump_to ;
 int max_uid ;
 int user_matches_condition (int ,int ,int) ;

int condition_iterator_jump_to (iterator_t I, int req_pos) {
  assert (req_pos > I->pos);
  condition_t Cond = ((struct condition_iterator *) I)->Cond;
  while (req_pos <= max_uid && (!User[req_pos] || !user_matches_condition (User[req_pos], Cond, req_pos))) {
    ++req_pos;
  }
  if (req_pos > max_uid) {
    I->jump_to = empty_iterator_jump_to;
    return I->pos = INFTY;
  }
  return I->pos = req_pos;
}
