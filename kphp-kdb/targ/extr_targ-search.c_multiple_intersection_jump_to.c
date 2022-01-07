
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intersection_condition_iterator {long cnt; TYPE_2__** A; } ;
typedef TYPE_1__* iterator_t ;
struct TYPE_6__ {int pos; int (* jump_to ) (TYPE_2__*,int) ;} ;
struct TYPE_5__ {int pos; void* jump_to; } ;


 int INFTY ;
 void* empty_iterator_jump_to ;
 int stub1 (TYPE_2__*,int) ;
 int stub2 (TYPE_2__*,int) ;

int multiple_intersection_jump_to (iterator_t I, int req_pos) {
  struct intersection_condition_iterator *ICI = (struct intersection_condition_iterator *)I;
  long i, N = ICI->cnt;
  int x;
  do {
    x = ICI->A[0]->pos;
    if (x < req_pos) {
      x = ICI->A[0]->jump_to (ICI->A[0], req_pos);
    }
    if (x == INFTY) {
      I->jump_to = empty_iterator_jump_to;
      return I->pos = INFTY;
    }
    for (i = 1; i < N; i++) {
      req_pos = ICI->A[i]->pos;
      if (req_pos < x) {
 req_pos = ICI->A[i]->jump_to (ICI->A[i], x);
      }
      if (req_pos > x) {
 break;
      }
    }
    if (req_pos == INFTY) {
      I->jump_to = empty_iterator_jump_to;
      return I->pos = INFTY;
    }
  } while (i < N);
  return I->pos = x;
}
