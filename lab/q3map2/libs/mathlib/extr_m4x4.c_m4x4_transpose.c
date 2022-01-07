
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* m4x4_t ;



void m4x4_transpose( m4x4_t matrix ){
 int i, j;
 float temp, *p1, *p2;

 for ( i = 1; i < 4; i++ ) {
  for ( j = 0; j < i; j++ ) {
   p1 = matrix + ( j * 4 + i );
   p2 = matrix + ( i * 4 + j );
   temp = *p1;
   *p1 = *p2;
   *p2 = temp;
  }
 }
}
