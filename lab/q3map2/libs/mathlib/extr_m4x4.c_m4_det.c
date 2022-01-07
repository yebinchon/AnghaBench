
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* m4x4_t ;
typedef int m3x3_t ;


 float m3_det (int ) ;
 int m4_submat (float*,int ,int ,int) ;

float m4_det( m4x4_t mr ){
 float det, result = 0, i = 1;
 m3x3_t msub3;
 int n;

 for ( n = 0; n < 4; n++, i *= -1 )
 {
  m4_submat( mr, msub3, 0, n );

  det = m3_det( msub3 );
  result += mr[n] * det * i;
 }

 return result;
}
