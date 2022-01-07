
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_13__ {int fogNum; int numVerts; int type; TYPE_2__* verts; TYPE_1__* shaderInfo; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_14__ {TYPE_8__* brush; } ;
typedef TYPE_4__ fog_t ;
typedef int entity_t ;
struct TYPE_15__ {scalar_t__* maxs; scalar_t__* mins; } ;
struct TYPE_12__ {int xyz; } ;
struct TYPE_11__ {scalar_t__ noFog; } ;


 int AddPointToBounds (int ,scalar_t__*,scalar_t__*) ;
 int ChopFaceSurfaceByBrush (int *,TYPE_3__*,TYPE_8__*) ;
 int ChopPatchSurfaceByBrush (int *,TYPE_3__*,TYPE_8__*) ;
 int ClearBounds (scalar_t__*,scalar_t__*) ;





 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 TYPE_3__* mapDrawSurfs ;
 TYPE_4__* mapFogs ;
 int numFogFragments ;
 int numFogPatchFragments ;
 int numMapDrawSurfs ;
 int numMapFogs ;

void FogDrawSurfaces( entity_t *e ){
 int i, j, k, fogNum;
 fog_t *fog;
 mapDrawSurface_t *ds;
 vec3_t mins, maxs;
 int fogged, numFogged;
 int numBaseDrawSurfs;



 Sys_FPrintf( SYS_VRB, "----- FogDrawSurfs -----\n" );


 numFogged = 0;
 numFogFragments = 0;


 for ( fogNum = 0; fogNum < numMapFogs; fogNum++ )
 {

  fog = &mapFogs[ fogNum ];


  numBaseDrawSurfs = numMapDrawSurfs;
  for ( i = 0; i < numBaseDrawSurfs; i++ )
  {

   ds = &mapDrawSurfs[ i ];


   if ( ds->shaderInfo->noFog ) {
    continue;
   }


   if ( fog->brush == ((void*)0) ) {

    if ( ds->fogNum >= 0 ) {
     continue;
    }
    fogged = 1;
   }
   else
   {

    ClearBounds( mins, maxs );
    for ( j = 0; j < ds->numVerts; j++ )
     AddPointToBounds( ds->verts[ j ].xyz, mins, maxs );


    for ( k = 0; k < 3; k++ )
    {
     if ( mins[ k ] > fog->brush->maxs[ k ] ) {
      break;
     }
     if ( maxs[ k ] < fog->brush->mins[ k ] ) {
      break;
     }
    }


    if ( k < 3 ) {
     continue;
    }


    switch ( ds->type )
    {

    case 132:
     fogged = ChopFaceSurfaceByBrush( e, ds, fog->brush );
     break;


    case 129:
     fogged = ChopPatchSurfaceByBrush( e, ds, fog->brush );
     break;


    case 128:
    case 131:
    case 130:
     fogged = 1;
     break;


    default:
     fogged = 0;
     break;
    }
   }


   if ( fogged ) {
    numFogged += fogged;
    ds->fogNum = fogNum;
   }
  }
 }


 Sys_FPrintf( SYS_VRB, "%9d fog polygon fragments\n", numFogFragments );
 Sys_FPrintf( SYS_VRB, "%9d fog patch fragments\n", numFogPatchFragments );
 Sys_FPrintf( SYS_VRB, "%9d fogged drawsurfs\n", numFogged );
}
