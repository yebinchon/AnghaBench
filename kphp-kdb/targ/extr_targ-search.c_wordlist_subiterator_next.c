
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordlist_subiterator {int pos; int mult; int mdec; } ;


 int INFTY ;
 int mlist_decode_pair (int ,int *) ;

__attribute__((used)) static inline int wordlist_subiterator_next (struct wordlist_subiterator *WI) {
  int res = mlist_decode_pair (WI->mdec, &WI->mult);
  return WI->pos = (res < 0x7fffffff ? res : INFTY);
}
