
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int bloc ;

void Huff_putBit( int bit, byte *fout, int *offset) {
 bloc = *offset;
 if ((bloc&7) == 0) {
  fout[(bloc>>3)] = 0;
 }
 fout[(bloc>>3)] |= bit << (bloc&7);
 bloc++;
 *offset = bloc;
}
