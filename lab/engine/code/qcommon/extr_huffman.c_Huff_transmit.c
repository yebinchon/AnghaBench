
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** loc; } ;
typedef TYPE_1__ huff_t ;
typedef int byte ;


 int NYT ;
 int add_bit (char,int *) ;
 int send (int *,int *,int *,int) ;

void Huff_transmit (huff_t *huff, int ch, byte *fout, int maxoffset) {
 int i;
 if (huff->loc[ch] == ((void*)0)) {

  Huff_transmit(huff, NYT, fout, maxoffset);
  for (i = 7; i >= 0; i--) {
   add_bit((char)((ch >> i) & 0x1), fout);
  }
 } else {
  send(huff->loc[ch], ((void*)0), fout, maxoffset);
 }
}
