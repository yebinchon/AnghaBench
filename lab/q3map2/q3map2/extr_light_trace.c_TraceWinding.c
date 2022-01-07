
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trace_t ;
struct TYPE_7__ {size_t infoNum; int numVerts; TYPE_1__* v; } ;
typedef TYPE_2__ traceWinding_t ;
struct TYPE_8__ {size_t infoNum; int edge2; TYPE_1__* v; int edge1; } ;
typedef TYPE_3__ traceTriangle_t ;
typedef int qboolean ;
struct TYPE_6__ {int xyz; } ;


 scalar_t__ TraceTriangle (int *,TYPE_3__*,int *) ;
 int VectorSubtract (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;
 int * traceInfos ;

qboolean TraceWinding( traceWinding_t *tw, trace_t *trace ){
 int i;
 traceTriangle_t tt;



 tt.infoNum = tw->infoNum;
 tt.v[ 0 ] = tw->v[ 0 ];


 for ( i = 1; i + 1 < tw->numVerts; i++ )
 {

  tt.v[ 1 ] = tw->v[ i ];
  tt.v[ 2 ] = tw->v[ i + 1 ];


  VectorSubtract( tt.v[ 1 ].xyz, tt.v[ 0 ].xyz, tt.edge1 );
  VectorSubtract( tt.v[ 2 ].xyz, tt.v[ 0 ].xyz, tt.edge2 );


  if ( TraceTriangle( &traceInfos[ tt.infoNum ], &tt, trace ) ) {
   return qtrue;
  }
 }


 return qfalse;
}
