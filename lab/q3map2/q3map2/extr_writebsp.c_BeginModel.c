
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_10__ {int width; int height; TYPE_1__* verts; } ;
struct TYPE_11__ {TYPE_2__ mesh; struct TYPE_11__* next; } ;
typedef TYPE_3__ parseMesh_t ;
struct TYPE_12__ {TYPE_3__* patches; TYPE_6__* brushes; } ;
typedef TYPE_4__ entity_t ;
struct TYPE_13__ {int firstBSPBrush; int firstBSPSurface; int maxs; int mins; } ;
typedef TYPE_5__ bspModel_t ;
struct TYPE_14__ {scalar_t__ numsides; int compileFlags; int maxs; int mins; struct TYPE_14__* next; } ;
typedef TYPE_6__ brush_t ;
struct TYPE_9__ {int xyz; } ;


 int AddPointToBounds (int ,int*,int*) ;
 int C_LIGHTGRID ;
 int ClearBounds (int*,int*) ;
 int Error (char*) ;
 size_t MAX_MAP_MODELS ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,int,int,int,int,int,int) ;
 int VectorCopy (int*,int ) ;
 TYPE_5__* bspModels ;
 TYPE_4__* entities ;
 size_t mapEntityNum ;
 int numBSPBrushes ;
 int numBSPDrawSurfaces ;
 size_t numBSPModels ;

void BeginModel( void ){
 bspModel_t *mod;
 brush_t *b;
 entity_t *e;
 vec3_t mins, maxs;
 vec3_t lgMins, lgMaxs;
 parseMesh_t *p;
 int i;



 if ( numBSPModels == MAX_MAP_MODELS ) {
  Error( "MAX_MAP_MODELS" );
 }


 mod = &bspModels[ numBSPModels ];
 e = &entities[ mapEntityNum ];


 ClearBounds( lgMins, lgMaxs );


 ClearBounds( mins, maxs );
 for ( b = e->brushes; b; b = b->next )
 {

  if ( b->numsides == 0 ) {
   continue;
  }
  AddPointToBounds( b->mins, mins, maxs );
  AddPointToBounds( b->maxs, mins, maxs );


  if ( b->compileFlags & C_LIGHTGRID ) {
   AddPointToBounds( b->mins, lgMins, lgMaxs );
   AddPointToBounds( b->maxs, lgMins, lgMaxs );
  }
 }


 for ( p = e->patches; p; p = p->next )
 {
  for ( i = 0; i < ( p->mesh.width * p->mesh.height ); i++ )
   AddPointToBounds( p->mesh.verts[i].xyz, mins, maxs );
 }


 if ( lgMins[ 0 ] < 99999 ) {

  VectorCopy( lgMins, mod->mins );
  VectorCopy( lgMaxs, mod->maxs );
 }
 else
 {

  VectorCopy( mins, mod->mins );
  VectorCopy( maxs, mod->maxs );
 }


 Sys_FPrintf( SYS_VRB, "BSP bounds: { %f %f %f } { %f %f %f }\n", mins[ 0 ], mins[ 1 ], mins[ 2 ], maxs[ 0 ], maxs[ 1 ], maxs[ 2 ] );
 Sys_FPrintf( SYS_VRB, "Lightgrid bounds: { %f %f %f } { %f %f %f }\n", lgMins[ 0 ], lgMins[ 1 ], lgMins[ 2 ], lgMaxs[ 0 ], lgMaxs[ 1 ], lgMaxs[ 2 ] );


 mod->firstBSPSurface = numBSPDrawSurfaces;
 mod->firstBSPBrush = numBSPBrushes;
}
