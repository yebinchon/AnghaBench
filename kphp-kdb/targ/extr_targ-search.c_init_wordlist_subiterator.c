
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordlist_subiterator {unsigned char* data_end; int mult; int mdec; int pos; } ;


 int INTERPOLATIVE_CODE_JUMP_SIZE ;
 scalar_t__ idx_max_uid ;
 int mlist_decode_pair (int ,int *) ;
 int zmalloc_mlist_decoder (scalar_t__,int,unsigned char*,int ,int ) ;

void init_wordlist_subiterator (struct wordlist_subiterator *WI, unsigned char *data, int len) {
  WI->mdec = zmalloc_mlist_decoder (idx_max_uid + 1, -1, data, 0, INTERPOLATIVE_CODE_JUMP_SIZE);
  WI->data_end = data + len;
  WI->pos = mlist_decode_pair (WI->mdec, &WI->mult);
}
