
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dist; int normal; } ;
typedef TYPE_1__ bspPlane_t ;
struct TYPE_8__ {size_t planeNum; int* children; } ;
typedef TYPE_2__ bspNode_t ;
struct TYPE_10__ {int cluster; } ;
struct TYPE_9__ {size_t* children; int type; int * plane; } ;


 void* AllocTraceNode () ;
 int PlaneTypeForNormal (int ) ;
 int TRACE_LEAF_SOLID ;
 int VectorCopy (int ,int *) ;
 TYPE_6__* bspLeafs ;
 TYPE_2__* bspNodes ;
 TYPE_1__* bspPlanes ;
 TYPE_3__* traceNodes ;

__attribute__((used)) static int SetupTraceNodes_r( int bspNodeNum ){
 int i, nodeNum, bspLeafNum;
 bspPlane_t *plane;
 bspNode_t *bspNode;



 bspNode = &bspNodes[ bspNodeNum ];
 plane = &bspPlanes[ bspNode->planeNum ];


 nodeNum = AllocTraceNode();


 traceNodes[ nodeNum ].type = PlaneTypeForNormal( plane->normal );
 VectorCopy( plane->normal, traceNodes[ nodeNum ].plane );
 traceNodes[ nodeNum ].plane[ 3 ] = plane->dist;


 for ( i = 0; i < 2; i++ )
 {

  if ( bspNode->children[ i ] < 0 ) {
   bspLeafNum = -bspNode->children[ i ] - 1;


   traceNodes[ nodeNum ].children[ i ] = AllocTraceNode();
   if ( bspLeafs[ bspLeafNum ].cluster == -1 ) {
    traceNodes[ traceNodes[ nodeNum ].children[ i ] ].type = TRACE_LEAF_SOLID;
   }
  }


  else{
   traceNodes[ nodeNum ].children[ i ] = SetupTraceNodes_r( bspNode->children[ i ] );
  }
 }


 return nodeNum;
}
