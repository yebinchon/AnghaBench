
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef int vec3_t ;
typedef int vec3_accu_t ;


 int CrossProduct (int ,int ,int ) ;
 int CrossProductAccu (int ,int ,int ) ;
 scalar_t__ DotProduct (int ,int ) ;
 scalar_t__ DotProductAccu (int ,int ) ;
 int FindFloatPlane (int ,scalar_t__,int,int *) ;
 int VectorCopyAccuToRegular (int ,int ) ;
 int VectorCopyRegularToAccu (int ,int ) ;
 int VectorNormalize (int ,int ) ;
 int VectorNormalizeAccu (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int VectorSubtractAccu (int ,int ,int ) ;

int MapPlaneFromPoints( vec3_t *p ){
 vec3_t t1, t2, normal;
 vec_t dist;



 VectorSubtract( p[ 0 ], p[ 1 ], t1 );
 VectorSubtract( p[ 2 ], p[ 1 ], t2 );
 CrossProduct( t1, t2, normal );
 VectorNormalize( normal, normal );


 dist = DotProduct( p[ 0 ], normal );


 return FindFloatPlane( normal, dist, 3, p );

}
