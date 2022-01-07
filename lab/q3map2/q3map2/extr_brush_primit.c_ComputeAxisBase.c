
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef float* vec3_t ;


 int atan2 (float,float) ;
 float cos (int ) ;
 int fabs (float) ;
 float sin (int ) ;
 float sqrt (float) ;

void ComputeAxisBase( vec3_t normal, vec3_t texX, vec3_t texY ){
 vec_t RotY, RotZ;



 if ( fabs( normal[ 0 ] ) < 1e-6 ) {
  normal[ 0 ] = 0.0f;
 }
 if ( fabs( normal[ 1 ] ) < 1e-6 ) {
  normal[ 1 ] = 0.0f;
 }
 if ( fabs( normal[ 2 ] ) < 1e-6 ) {
  normal[ 2 ] = 0.0f;
 }


 RotY = -atan2( normal[ 2 ], sqrt( normal[ 1 ] * normal[ 1 ] + normal[ 0 ] * normal[ 0 ] ) );
 RotZ = atan2( normal[ 1 ], normal[ 0 ] );


 texX[ 0 ] = -sin( RotZ );
 texX[ 1 ] = cos( RotZ );
 texX[ 2 ] = 0;


 texY[ 0 ] = -sin( RotY ) * cos( RotZ );
 texY[ 1 ] = -sin( RotY ) * sin( RotZ );
 texY[ 2 ] = -cos( RotY );
}
