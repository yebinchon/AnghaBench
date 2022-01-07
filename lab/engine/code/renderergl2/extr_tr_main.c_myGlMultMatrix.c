
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void myGlMultMatrix( const float *a, const float *b, float *out ) {
 int i, j;

 for ( i = 0 ; i < 4 ; i++ ) {
  for ( j = 0 ; j < 4 ; j++ ) {
   out[ i * 4 + j ] =
    a [ i * 4 + 0 ] * b [ 0 * 4 + j ]
    + a [ i * 4 + 1 ] * b [ 1 * 4 + j ]
    + a [ i * 4 + 2 ] * b [ 2 * 4 + j ]
    + a [ i * 4 + 3 ] * b [ 3 * 4 + j ];
  }
 }
}
