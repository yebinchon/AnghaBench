
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mult; } ;
struct wordlist_iterator {int pos; TYPE_1__ WS; int mult; int jump_to; } ;
typedef scalar_t__ iterator_t ;


 int INFTY ;
 int assert (int) ;
 int empty_iterator_jump_to ;
 int wordlist_subiterator_jump_to (TYPE_1__*,int) ;

int wordlist_iterator_jump_to (iterator_t I, int req_pos) {
  struct wordlist_iterator *WI = (struct wordlist_iterator *) I;
  int res = wordlist_subiterator_jump_to (&WI->WS, req_pos);
  if (res == INFTY) {
    WI->jump_to = empty_iterator_jump_to;
  } else {
    assert ((WI->mult = WI->WS.mult) > 0);
  }
  return WI->pos = res;
}
