
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* m3x3_t ;



float m3_det( m3x3_t mat ){
 float det;

 det = mat[0] * ( mat[4] * mat[8] - mat[7] * mat[5] )
    - mat[1] * ( mat[3] * mat[8] - mat[6] * mat[5] )
    + mat[2] * ( mat[3] * mat[7] - mat[6] * mat[4] );

 return( det );
}
