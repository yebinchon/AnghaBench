
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* m4x4_t ;
typedef int m3x3_t ;


 double fabs (float) ;
 int m3_det (int ) ;
 float m4_det (int*) ;
 int m4_submat (int*,int ,int,int) ;
 int memcpy (int*,int*,int) ;

int m4x4_invert( m4x4_t matrix ){
 float mdet = m4_det( matrix );
 m3x3_t mtemp;
 int i, j, sign;
 m4x4_t m4x4_temp;

 if ( fabs( mdet ) < 0.0000000001 ) {
  return 1;
 }

 memcpy( m4x4_temp, matrix, sizeof( m4x4_t ) );

 for ( i = 0; i < 4; i++ )
  for ( j = 0; j < 4; j++ )
  {
   sign = 1 - ( ( i + j ) % 2 ) * 2;

   m4_submat( m4x4_temp, mtemp, i, j );

   matrix[i + j * 4] = ( m3_det( mtemp ) * sign ) / mdet;
  }

 return 0;
}
