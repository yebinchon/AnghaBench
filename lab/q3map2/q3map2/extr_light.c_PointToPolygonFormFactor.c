
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int const vec3_t ;


 int CrossProduct (int const,int const,int const) ;
 float DotProduct (int const,int const) ;
 int MAX_POINTS_ON_WINDING ;
 float ONE_OVER_2PI ;
 int VectorCopy (int const,int const) ;
 float VectorNormalize (int const,int const) ;
 int VectorSubtract (int ,int const,int const) ;
 float acos (float) ;

float PointToPolygonFormFactor( const vec3_t point, const vec3_t normal, const winding_t *w ){
 vec3_t triVector, triNormal;
 int i, j;
 vec3_t dirs[ MAX_POINTS_ON_WINDING ];
 float total;
 float dot, angle, facing;



 for ( i = 0; i < w->numpoints; i++ )
 {
  VectorSubtract( w->p[ i ], point, dirs[ i ] );
  VectorNormalize( dirs[ i ], dirs[ i ] );
 }


 VectorCopy( dirs[ 0 ], dirs[ i ] );


 total = 0.0f;
 for ( i = 0; i < w->numpoints; i++ )
 {

  j = i + 1;
  dot = DotProduct( dirs[ i ], dirs[ j ] );


  if ( dot > 1.0f ) {
   dot = 1.0f;
  }
  else if ( dot < -1.0f ) {
   dot = -1.0f;
  }


  angle = acos( dot );

  CrossProduct( dirs[ i ], dirs[ j ], triVector );
  if ( VectorNormalize( triVector, triNormal ) < 0.0001f ) {
   continue;
  }

  facing = DotProduct( normal, triNormal );
  total += facing * angle;


  if ( total > 6.3f || total < -6.3f ) {
   return 0.0f;
  }
 }



 total *= ONE_OVER_2PI;
 return total;
}
