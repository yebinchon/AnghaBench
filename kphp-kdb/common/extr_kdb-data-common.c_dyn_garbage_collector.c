
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* FreeCnt ;
 int MAX_RECORD_WORDS ;
 int PTR_INTS ;
 int* SplitBlocks ;

void dyn_garbage_collector (void) {
  int i, cval, cmax = -1, cmptr = 0;
  for (i = MAX_RECORD_WORDS + 3; i >= PTR_INTS; i--) {
    cval = FreeCnt[i] * i;
    if (cval > cmax) {
      cmax = cval;
      cmptr = i;
    }
    SplitBlocks[i-PTR_INTS] = cmptr;
  }
}
