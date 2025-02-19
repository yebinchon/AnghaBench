
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct condition_filter_iterator {int pos; TYPE_1__* A; int Cond; int jump_to; } ;
typedef scalar_t__ iterator_t ;
struct TYPE_3__ {int (* jump_to ) (TYPE_1__*,int) ;} ;


 int INFTY ;
 scalar_t__* User ;
 int assert (int) ;
 int empty_iterator_jump_to ;
 int max_uid ;
 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int) ;
 scalar_t__ user_matches_condition (scalar_t__,int ,int) ;

int condition_filter_iterator_jump_to (iterator_t I, int req_pos) {
  struct condition_filter_iterator *IF = (struct condition_filter_iterator *) I;
  int x = IF->pos;
  if (req_pos > x) {
    x = IF->A->jump_to (IF->A, req_pos);
  }
  while (1) {
    if (x > max_uid) {
      IF->jump_to = empty_iterator_jump_to;
      return IF->pos = INFTY;
    }
    assert ((unsigned) x <= (unsigned) max_uid && User[x]);
    if (user_matches_condition (User[x], IF->Cond, x)) {
      return IF->pos = x;
    }
    x = IF->A->jump_to (IF->A, x + 1);
  }
}
