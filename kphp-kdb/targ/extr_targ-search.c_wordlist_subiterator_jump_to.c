
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordlist_subiterator {int pos; int mult; int mdec; } ;


 int INFTY ;
 int assert (int) ;
 int mlist_forward_decode_idx (int ,int,int *) ;
 int wordlist_subiterator_next (struct wordlist_subiterator*) ;

int wordlist_subiterator_jump_to (struct wordlist_subiterator *WI, int req_pos) {
  if (req_pos == WI->pos + 1) {
    return wordlist_subiterator_next (WI);
  } else {
    assert (req_pos > WI->pos);
    int res = mlist_forward_decode_idx (WI->mdec, req_pos, &WI->mult);
    return WI->pos = (res < 0x7fffffff ? res : INFTY);
  }
}
