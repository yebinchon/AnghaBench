
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * m4x4_t ;
typedef int * m3x3_t ;



void m4_submat( m4x4_t mr, m3x3_t mb, int i, int j ){
 int ti, tj, idst, jdst;

 idst = 0;
 for ( ti = 0; ti < 4; ti++ )
 {
  if ( ti == i ) {
   continue;
  }
  if ( ti < i ) {
   idst = ti;
  }
  else
  {
   idst = ti - 1;
  }

  for ( tj = 0; tj < 4; tj++ )
  {
   if ( tj == j ) {
    continue;
   }
   if ( tj < j ) {
    jdst = tj;
   }
   else
   {
    jdst = tj - 1;
   }

   mb[idst * 3 + jdst] = mr[ti * 4 + tj ];
  }
 }
}
