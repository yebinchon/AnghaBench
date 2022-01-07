
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * loc; } ;
typedef TYPE_1__ huff_t ;
typedef int byte ;


 int bloc ;
 int send (int ,int *,int *,int) ;

void Huff_offsetTransmit (huff_t *huff, int ch, byte *fout, int *offset, int maxoffset) {
 bloc = *offset;
 send(huff->loc[ch], ((void*)0), fout, maxoffset);
 *offset = bloc;
}
