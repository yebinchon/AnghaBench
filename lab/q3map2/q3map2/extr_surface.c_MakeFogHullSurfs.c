
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int tree_t ;
typedef int shaderInfo_t ;
struct TYPE_5__ {int fogNum; int numVerts; int numIndexes; TYPE_2__* indexes; TYPE_2__* verts; int * shaderInfo; } ;
typedef TYPE_1__ mapDrawSurface_t ;
typedef int entity_t ;
struct TYPE_6__ {int xyz; } ;


 TYPE_1__* AllocDrawSurface (int ) ;
 int SURFACE_FOGHULL ;
 int SYS_VRB ;
 int * ShaderInfoForShader (char*) ;
 int Sys_FPrintf (int ,char*) ;
 int VectorCopy (int ,int*) ;
 int VectorSet (int ,int,int,int) ;
 int mapMaxs ;
 int mapMins ;
 int memcpy (TYPE_2__*,int*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 void* safe_malloc (int) ;

void MakeFogHullSurfs( entity_t *e, tree_t *tree, char *shader ){
 shaderInfo_t *si;
 mapDrawSurface_t *ds;
 vec3_t fogMins, fogMaxs;
 int i, indexes[] =
 {
  0, 1, 2, 0, 2, 3,
  4, 7, 5, 5, 7, 6,
  1, 5, 6, 1, 6, 2,
  0, 4, 5, 0, 5, 1,
  2, 6, 7, 2, 7, 3,
  3, 7, 4, 3, 4, 0
 };



 if ( shader == ((void*)0) || shader[ 0 ] == '\0' ) {
  return;
 }


 Sys_FPrintf( SYS_VRB, "--- MakeFogHullSurfs ---\n" );


 VectorCopy( mapMins, fogMins );
 VectorCopy( mapMaxs, fogMaxs );
 for ( i = 0; i < 3; i++ )
 {
  fogMins[ i ] -= 128;
  fogMaxs[ i ] += 128;
 }


 si = ShaderInfoForShader( shader );


 ds = AllocDrawSurface( SURFACE_FOGHULL );
 ds->shaderInfo = si;
 ds->fogNum = -1;
 ds->numVerts = 8;
 ds->verts = safe_malloc( ds->numVerts * sizeof( *ds->verts ) );
 memset( ds->verts, 0, ds->numVerts * sizeof( *ds->verts ) );
 ds->numIndexes = 36;
 ds->indexes = safe_malloc( ds->numIndexes * sizeof( *ds->indexes ) );
 memset( ds->indexes, 0, ds->numIndexes * sizeof( *ds->indexes ) );


 VectorSet( ds->verts[ 0 ].xyz, fogMins[ 0 ], fogMins[ 1 ], fogMins[ 2 ] );
 VectorSet( ds->verts[ 1 ].xyz, fogMins[ 0 ], fogMaxs[ 1 ], fogMins[ 2 ] );
 VectorSet( ds->verts[ 2 ].xyz, fogMaxs[ 0 ], fogMaxs[ 1 ], fogMins[ 2 ] );
 VectorSet( ds->verts[ 3 ].xyz, fogMaxs[ 0 ], fogMins[ 1 ], fogMins[ 2 ] );

 VectorSet( ds->verts[ 4 ].xyz, fogMins[ 0 ], fogMins[ 1 ], fogMaxs[ 2 ] );
 VectorSet( ds->verts[ 5 ].xyz, fogMins[ 0 ], fogMaxs[ 1 ], fogMaxs[ 2 ] );
 VectorSet( ds->verts[ 6 ].xyz, fogMaxs[ 0 ], fogMaxs[ 1 ], fogMaxs[ 2 ] );
 VectorSet( ds->verts[ 7 ].xyz, fogMaxs[ 0 ], fogMins[ 1 ], fogMaxs[ 2 ] );


 memcpy( ds->indexes, indexes, ds->numIndexes * sizeof( *ds->indexes ) );
}
