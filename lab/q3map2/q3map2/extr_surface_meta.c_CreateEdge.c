
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec4_t ;
typedef int vec3_t ;
struct TYPE_3__ {void** edge; int kingpin; void* kingpinLength; void** plane; void* length; int origin; } ;
typedef TYPE_1__ edge_t ;


 int CrossProduct (int ,void**,void**) ;
 void* DotProduct (int ,void**) ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (void**,void**) ;
 int VectorSubtract (int ,int ,void**) ;
 scalar_t__ fabs (void*) ;

void CreateEdge( vec4_t plane, vec3_t a, vec3_t b, edge_t *edge ){

 VectorCopy( a, edge->origin );


 VectorSubtract( b, a, edge->edge );

 if ( fabs( edge->edge[ 0 ] ) > fabs( edge->edge[ 1 ] ) && fabs( edge->edge[ 0 ] ) > fabs( edge->edge[ 2 ] ) ) {
  edge->kingpin = 0;
 }
 else if ( fabs( edge->edge[ 1 ] ) > fabs( edge->edge[ 0 ] ) && fabs( edge->edge[ 1 ] ) > fabs( edge->edge[ 2 ] ) ) {
  edge->kingpin = 1;
 }
 else{
  edge->kingpin = 2;
 }
 edge->kingpinLength = edge->edge[ edge->kingpin ];

 VectorNormalize( edge->edge, edge->edge );
 edge->edge[ 3 ] = DotProduct( a, edge->edge );
 edge->length = DotProduct( b, edge->edge ) - edge->edge[ 3 ];


 CrossProduct( plane, edge->edge, edge->plane );
 edge->plane[ 3 ] = DotProduct( a, edge->plane );
}
