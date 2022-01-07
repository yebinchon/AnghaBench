
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int vec3_t ;
typedef scalar_t__ qboolean ;
struct TYPE_6__ {int numpoints; scalar_t__** points; } ;
typedef TYPE_1__ fixedWinding_t ;


 scalar_t__ CONTINUOUS_EPSILON ;
 int CrossProduct (int ,int ,int ) ;
 scalar_t__ DotProduct (int ,int ) ;
 TYPE_1__* NewFixedWinding (int) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorNormalize (int ,int ) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,int ) ;
 double fabs (scalar_t__) ;

fixedWinding_t *TryMergeWinding( fixedWinding_t *f1, fixedWinding_t *f2, vec3_t planenormal ){
 vec_t *p1, *p2, *p3, *p4, *back;
 fixedWinding_t *newf;
 int i, j, k, l;
 vec3_t normal, delta;
 vec_t dot;
 qboolean keep1, keep2;





 p1 = p2 = ((void*)0);
 j = 0;

 for ( i = 0; i < f1->numpoints; i++ )
 {
  p1 = f1->points[i];
  p2 = f1->points[( i + 1 ) % f1->numpoints];
  for ( j = 0; j < f2->numpoints; j++ )
  {
   p3 = f2->points[j];
   p4 = f2->points[( j + 1 ) % f2->numpoints];
   for ( k = 0; k < 3; k++ )
   {
    if ( fabs( p1[k] - p4[k] ) > 0.1 ) {
     break;
    }
    if ( fabs( p2[k] - p3[k] ) > 0.1 ) {
     break;
    }
   }
   if ( k == 3 ) {
    break;
   }
  }
  if ( j < f2->numpoints ) {
   break;
  }
 }

 if ( i == f1->numpoints ) {
  return ((void*)0);

 }




 back = f1->points[( i + f1->numpoints - 1 ) % f1->numpoints];
 VectorSubtract( p1, back, delta );
 CrossProduct( planenormal, delta, normal );
 VectorNormalize( normal, normal );

 back = f2->points[( j + 2 ) % f2->numpoints];
 VectorSubtract( back, p1, delta );
 dot = DotProduct( delta, normal );
 if ( dot > CONTINUOUS_EPSILON ) {
  return ((void*)0);
 }
 keep1 = (qboolean)( dot < -CONTINUOUS_EPSILON );

 back = f1->points[( i + 2 ) % f1->numpoints];
 VectorSubtract( back, p2, delta );
 CrossProduct( planenormal, delta, normal );
 VectorNormalize( normal, normal );

 back = f2->points[( j + f2->numpoints - 1 ) % f2->numpoints];
 VectorSubtract( back, p2, delta );
 dot = DotProduct( delta, normal );
 if ( dot > CONTINUOUS_EPSILON ) {
  return ((void*)0);
 }
 keep2 = (qboolean)( dot < -CONTINUOUS_EPSILON );




 newf = NewFixedWinding( f1->numpoints + f2->numpoints );


 for ( k = ( i + 1 ) % f1->numpoints ; k != i ; k = ( k + 1 ) % f1->numpoints )
 {
  if ( k == ( i + 1 ) % f1->numpoints && !keep2 ) {
   continue;
  }

  VectorCopy( f1->points[k], newf->points[newf->numpoints] );
  newf->numpoints++;
 }


 for ( l = ( j + 1 ) % f2->numpoints ; l != j ; l = ( l + 1 ) % f2->numpoints )
 {
  if ( l == ( j + 1 ) % f2->numpoints && !keep1 ) {
   continue;
  }
  VectorCopy( f2->points[l], newf->points[newf->numpoints] );
  newf->numpoints++;
 }

 return newf;
}
