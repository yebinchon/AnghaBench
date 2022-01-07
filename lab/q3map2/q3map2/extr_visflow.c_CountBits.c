
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



int CountBits( byte *bits, int numbits ){
 int i;
 int c;

 c = 0;
 for ( i = 0 ; i < numbits ; i++ )
  if ( bits[i >> 3] & ( 1 << ( i & 7 ) ) ) {
   c++;
  }

 return c;
}
