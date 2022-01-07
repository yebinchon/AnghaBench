
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LittleLong (int) ;

void Q3_SwapBlock( int *block, int sizeOfBlock ) {
 int i;

 sizeOfBlock >>= 2;
 for ( i = 0 ; i < sizeOfBlock ; i++ ) {
  block[i] = LittleLong( block[i] );
 }
}
